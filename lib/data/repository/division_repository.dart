import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:sosedifedi/data/mappers/division_mapper.dart';
import 'package:sosedifedi/data/mappers/report_mapper.dart';
import 'package:sosedifedi/data/models/connection_status_response/connection_status_response.dart';
import 'package:sosedifedi/data/models/divisions/division_response/division.dart';
import 'package:sosedifedi/data/models/divisions/metrics_response/metrics_response.dart';
import 'package:sosedifedi/data/models/reports/reports_response/reports_response.dart';
import 'package:sosedifedi/data/models/temperature_response/temperature_response.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/api1c_service.dart';
import 'package:sosedifedi/domain/models/divisions/division/division.dart';
import 'package:sosedifedi/domain/models/divisions/division_units/division_unit.dart';
import 'package:sosedifedi/domain/models/metric_periods/metric_periods.dart';
import 'package:sosedifedi/domain/models/reports/report_data/report_data.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

typedef DivisionUnitsData = ({List<DivisionUnit> units, Division division, List<Map<String, dynamic>> ingredients});

abstract class DivisionRepository {
  Future<DefaultResponse<MetricPeriods>> getMetricPeriods();
  Future<DefaultResponse<List<Division>>> getDivisions(MetricPeriodItem period);
  Future<DefaultResponse<DivisionUnitsData>> getDivisionUnits({
    required String divisionId,
    required MetricPeriodItem period,
  });

  Future<DefaultResponse<List<ReportResponse>>> getReports();

  Future<DefaultResponse<ReportData>> getReportData({
    required String id,
    required String? unitId,
    required DateTime startDate,
    required DateTime endDate,
  });

  Future<DefaultResponse<List<ConnectionStatus>>> getConnectionStatuses({
    required String unitId,
  });

  Future<DefaultResponse<List<UnitTemperature>>> getTemperatures({
    required String unitId,
  });
}

@Singleton(as: DivisionRepository)
class DivisionRepositoryImpl implements DivisionRepository {
  DivisionRepositoryImpl({
    required this.api1cService,
    required this.authRepository,
    required this.mapper,
    required this.reportMapper,
  });

  @protected
  final Api1cService api1cService;

  @protected
  final AuthRepository authRepository;

  @protected
  final DivisionMapper mapper;

  @protected
  final ReportMapper reportMapper;

  @protected
  final BehaviorSubject<MetricPeriods> metricPeriodsSubject =
      BehaviorSubject<MetricPeriods>();

  @override
  Future<DefaultResponse<MetricPeriods>> getMetricPeriods() async {
    if (metricPeriodsSubject.hasValue) {
      return ApiResponse.success(metricPeriodsSubject.value);
    }
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getMetricPeriods(token: token);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      final metricPeriods = mapper.mapToMetricPeriodsFromResponse(
        response.result,
      );

      metricPeriodsSubject.add(metricPeriods);

      return ApiResponse.success(metricPeriods);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<Division>>> getDivisions(
      MetricPeriodItem period) async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getDivisions(token: token);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      final divisions = response.result.data;

      Future<Division> getDivision(
        DivisionResponse response,
      ) async {
        final metricsResponse = await api1cService.getMetrics(
          token: token,
          period: period.index,
          divisionId: response.divisionId,
        );

        final List<MetricItemResponse> metrics = metricsResponse.isSuccess
            ? metricsResponse.result.data
                .where(
                    (e) => e.destinationType == DestinationTypeResponse.total)
                .toList()
            : [];

        return mapper.mapToDivisionFromResponse(response, metrics);
      }

      final result = await Future.wait(divisions.map(getDivision));

      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(
        CommonResponseError.undefinedError(e),
      );
    }
  }

  @override
  Future<DefaultResponse<DivisionUnitsData>> getDivisionUnits({
    required String divisionId,
    required MetricPeriodItem period,
  }) async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getDivisionUnits(
        token: token,
        divisionId: divisionId,
        period: period.index,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      final units = response.result.data;

      final metricsResponse = await api1cService.getMetrics(
        token: token,
        period: period.index,
        divisionId: divisionId,
      );

      final List<MetricItemResponse> metrics =
          metricsResponse.isSuccess ? metricsResponse.result.data : [];

      final List<DivisionUnit> result = [];

      for (final unit in units) {
        List<MetricItemResponse>? unitMetrics;
        if (unit.destinationType != null) {
          unitMetrics = metrics
              .where((e) => e.destinationType == unit.destinationType)
              .toList();
        }
        result.add(
          mapper.mapToDivisionUnitFromResponse(unit, unitMetrics ?? []),
        );
      }

      return ApiResponse.success((
        units: result,
        division: mapper.mapToDivisionFromResponse(
          response.result.division,
          metrics,
        ),
        ingredients: api1cService.lastRawIngredients,
      ));
    } catch (e) {
      return ApiResponse.error(
        CommonResponseError.undefinedError(e),
      );
    }
  }

  @override
  Future<DefaultResponse<List<ReportResponse>>> getReports() async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getReports(token: token);

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result.reports);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReportData>> getReportData({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
    required String? unitId,
  }) async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getReportData(
        token: token,
        id: id,
        unitId: unitId,
        startDate: startDate,
        endDate: endDate,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(reportMapper.mapFromResponse(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<ConnectionStatus>>> getConnectionStatuses({
    required String unitId,
  }) async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getConnectionStatuses(
        token: token,
        unitId: unitId,
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
  Future<DefaultResponse<List<UnitTemperature>>> getTemperatures({
    required String unitId,
  }) async {
    try {
      final token = authRepository.authData?.user.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await api1cService.getTemperatures(
        token: token,
        unitId: unitId,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
