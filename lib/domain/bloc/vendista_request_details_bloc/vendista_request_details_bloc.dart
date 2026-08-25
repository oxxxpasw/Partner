import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';
import 'package:sosedifedi/data/repository/vendista_requests_repository.dart';
import 'package:sosedifedi/domain/models/org_info/org_info.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'vendista_request_details_bloc.freezed.dart';
part 'vendista_request_details_event.dart';
part 'vendista_request_details_state.dart';

@injectable
class VendistaRequestDetailsBloc extends SrBloc<VendistaRequestDetailsEvent,
    VendistaRequestDetailsState, VendistaRequestDetailsSr> {
  VendistaRequestDetailsBloc({
    required this.vendistaRequestsRepository,
    @factoryParam required this.request,
  }) : super(const VendistaRequestDetailsState()) {
    on<_Init>(_onInit);
    on<_ConfirmPressed>(_onConfirmPressed);
    on<_RegionChanged>(_onRegionChanged);
    on<_DistrictChanged>(_onDistrictChanged);
  }

  @protected
  final VendistaRequest request;

  @protected
  final VendistaRequestsRepository vendistaRequestsRepository;

  Future<void> _onInit(
    _Init event,
    Emitter<VendistaRequestDetailsState> emit,
  ) async {
    emit(
      state.copyWith(status: VendistaRequestDetailsStatus.loading),
    );

    final result = await Future.wait([
      vendistaRequestsRepository.getRegions(),
      vendistaRequestsRepository.getVAT(),
      vendistaRequestsRepository.getOrgInfo(),
    ]);

    final regionsResponse = result[0] as DefaultResponse<List<String>>;
    final vatResponse = result[1] as DefaultResponse<List<String>>;
    final orgInfoResponse = result[2] as DefaultResponse<OrgInfo>;

    emit(
      state.copyWith(
        status: VendistaRequestDetailsStatus.ready,
        regions: regionsResponse.isSuccess ? regionsResponse.result : [],
        cities: [],
        districts: [],
        vat: vatResponse.isSuccess ? vatResponse.result : [],
        orgInfo: orgInfoResponse.isSuccess ? orgInfoResponse.result : null,
        request: request,
      ),
    );
  }

  Future<void> _onConfirmPressed(
    _ConfirmPressed event,
    Emitter<VendistaRequestDetailsState> emit,
  ) async {
    emit(
      state.copyWith(status: VendistaRequestDetailsStatus.updating),
    );

    final response = await vendistaRequestsRepository.addRequestData(
      NewDataRequest(
        entityType: event.organizationType,
        organization: event.organizationName,
        vat: event.vat,
        city: event.city,
        address: event.address,
        locationName: event.name,
        latitude: event.latitude,
        longitude: event.longitude,
        requestId: request.code,
      ),
    );

    if (response.hasError) {
      emit(
        state.copyWith(
          status: VendistaRequestDetailsStatus.ready,
        ),
      );
      addError(response.error);
      addSr(
        VendistaRequestDetailsSr.error(
          ErrorMessages.getMessage(response.error),
        ),
      );
      return;
    }

    addSr(const VendistaRequestDetailsSr.success());
    emit(
      state.copyWith(
        status: VendistaRequestDetailsStatus.ready,
      ),
    );
  }

  Future<void> _onRegionChanged(
    _RegionChanged event,
    Emitter<VendistaRequestDetailsState> emit,
  ) async {
    if (state.selectedRegion == event.region) return;

    try {
      addSr(const VendistaRequestDetailsSr.showLoadingOverlay());

      emit(state.copyWith(
        selectedRegion: event.region,
      ));

      final response =
          await vendistaRequestsRepository.getDistricts(region: event.region);

      if (response.hasError) {
        addError(response.error);
        addSr(
          VendistaRequestDetailsSr.error(
            ErrorMessages.getMessage(response.error),
          ),
        );
        emit(
          state.copyWith(
            districts: [],
            cities: [],
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          districts: response.result,
          cities: [],
        ),
      );
    } finally {
      addSr(const VendistaRequestDetailsSr.hideLoadingOverlay());
    }
  }

  Future<void> _onDistrictChanged(
    _DistrictChanged event,
    Emitter<VendistaRequestDetailsState> emit,
  ) async {
    if (state.selectedDistrict == event.district) return;

    try {
      addSr(const VendistaRequestDetailsSr.showLoadingOverlay());

      emit(state.copyWith(
        selectedDistrict: event.district,
      ));

      final response =
          await vendistaRequestsRepository.getCities(district: event.district);

      if (response.hasError) {
        addError(response.error);
        addSr(
          VendistaRequestDetailsSr.error(
            ErrorMessages.getMessage(response.error),
          ),
        );
        emit(
          state.copyWith(
            cities: [],
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          cities: response.result,
        ),
      );
    } finally {
      addSr(const VendistaRequestDetailsSr.hideLoadingOverlay());
    }
  }
}
