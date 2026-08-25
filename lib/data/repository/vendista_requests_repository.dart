import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/vendista_request_mapper.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';
import 'package:sosedifedi/data/models/vendista_request/vendista_request_body/vendista_request_body.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/api1c_service.dart';
import 'package:sosedifedi/domain/models/org_info/org_info.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class VendistaRequestsRepository {
  Future<DefaultResponse<List<String>>> createNewRequest({
    required String login,
    required String password,
    required List<int> idVendista,
  });

  Future<DefaultResponse<List<int>>> getTerminals({
    required String login,
    required String password,
  });

  Future<DefaultResponse<List<VendistaRequest>>> getAllRequests();

  Future<DefaultResponse<List<String>>> getRegions();

  Future<DefaultResponse<List<String>>> getDistricts({
    String? region,
  });

  Future<DefaultResponse<List<String>>> getCities({
    String? district,
  });

  Future<DefaultResponse<List<String>>> getVAT();

  Future<DefaultResponse<bool>> addRequestData(NewDataRequest data);

  Future<DefaultResponse<OrgInfo>> getOrgInfo();
}

@Singleton(as: VendistaRequestsRepository)
class VendistaRequestsRepositoryImpl implements VendistaRequestsRepository {
  VendistaRequestsRepositoryImpl({
    required this.api1cService,
    required this.authRepository,
    required this.mapper,
  });

  @protected
  final Api1cService api1cService;

  @protected
  final AuthRepository authRepository;

  @protected
  final VendistaRequestMapper mapper;

  @override
  Future<DefaultResponse<List<String>>> createNewRequest({
    required String login,
    required String password,
    required List<int> idVendista,
  }) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(
          CommonResponseError.unAuthorized(),
        );
      }

      final response = await api1cService.createNewRequest(
        body: CreateVendistaRequestBody(
          login: login,
          password: password,
          token: token,
          idVendista: idVendista,
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<VendistaRequest>>> getAllRequests() async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(
          CommonResponseError.unAuthorized(),
        );
      }

      final response = await api1cService.getAllRequests(token: token);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(
        response.result.map(mapper.mapVendistaRequestFromResponse).toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<int>>> getTerminals({
    required String login,
    required String password,
  }) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(
          CommonResponseError.unAuthorized(),
        );
      }

      final response = await api1cService.getTerminals(
        body: VendistaTerminalsBody(
          login: login,
          password: password,
          token: token,
        ),
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> getRegions() async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    return api1cService.getRegions(token: token);
  }

  @override
  Future<DefaultResponse<List<String>>> getDistricts({String? region}) async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    return api1cService.getDistricts(
      token: token,
      region: region,
    );
  }

  @override
  Future<DefaultResponse<List<String>>> getCities({String? district}) async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    return api1cService.getCities(
      token: token,
      district: district,
    );
  }

  @override
  Future<DefaultResponse<List<String>>> getVAT() async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    return api1cService.getVAT(token: token);
  }

  @override
  Future<DefaultResponse<bool>> addRequestData(NewDataRequest data) async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    return api1cService.addRequestData(data: data, token: token);
  }

  @override
  Future<DefaultResponse<OrgInfo>> getOrgInfo() async {
    final token = await authRepository.token;
    if (token == null) {
      return const ApiResponse.error(
        CommonResponseError.unAuthorized(),
      );
    }
    final response = await api1cService.getOrgInfo(token: token);

    if (response.hasError) {
      return ApiResponse.error(response.error);
    }

    return ApiResponse.success(
      mapper.mapOrgInfoFromResponse(response.result),
    );
  }
}
