import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/connection_status_response/connection_status_response.dart';
import 'package:sosedifedi/data/models/divisions/division_response/division.dart';
import 'package:sosedifedi/data/models/divisions/division_units_response/division_units_response.dart';
import 'package:sosedifedi/data/models/divisions/metrics_response/metrics_response.dart';
import 'package:sosedifedi/data/models/metric_period_response/metric_period_response.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/models/org_info_response/org_info_response.dart';
import 'package:sosedifedi/data/models/reports/report_data_response/report_data_response.dart';
import 'package:sosedifedi/data/models/reports/reports_response/reports_response.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/data/models/temperature_response/temperature_response.dart';
import 'package:sosedifedi/data/models/vendista_request/vendista_request_body/vendista_request_body.dart';
import 'package:sosedifedi/data/models/vendista_request/vendista_request_response/vendista_request_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/json_rpc_extension.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class Api1cService {
  //Divisions
  Future<DefaultResponse<DivisionsResponse>> getDivisions({
    required String token,
  });

  Future<DefaultResponse<MetricsResponse>> getMetrics({
    required String token,
    String? divisionId,
    required int period,
  });

  Future<DefaultResponse<DivisionUnitsResponse>> getDivisionUnits({
    required String token,
    required String divisionId,
    required int period,
  });

  List<Map<String, dynamic>> get lastRawIngredients;

  Future<DefaultResponse<bool>> inventarization({
    required InventarizationResponse order,
    required String token,
  });

  Future<DefaultResponse<bool>> discarding({
    required InventarizationResponse order,
    required String token,
  });

  //Requests
  Future<DefaultResponse<List<String>>> createNewRequest({
    required CreateVendistaRequestBody body,
  });

  Future<DefaultResponse<List<int>>> getTerminals({
    required VendistaTerminalsBody body,
  });

  Future<DefaultResponse<List<VendistaRequestItemResponse>>> getAllRequests({
    required String token,
  });

  Future<DefaultResponse<List<String>>> getRegions({
    required String token,
  });

  Future<DefaultResponse<List<String>>> getDistricts({
    required String token,
    String? region,
  });

  Future<DefaultResponse<List<String>>> getCities({
    required String token,
    String? district,
  });

  Future<DefaultResponse<List<String>>> getVAT({
    required String token,
  });

  Future<DefaultResponse<bool>> addRequestData({
    required NewDataRequest data,
    required String token,
  });

  Future<DefaultResponse<OrgInfoResponse>> getOrgInfo({
    required String token,
  });

  Future<DefaultResponse<MetricPeriodResponse>> getMetricPeriods({
    required String token,
  });

  Future<DefaultResponse<void>> closeWorkShift({
    required String token,
    required String storeId,
  });

  Future<DefaultResponse<ReportsResponse>> getReports({
    required String token,
  });

  Future<DefaultResponse<ReportDataResponse>> getReportData({
    required String token,
    required String id,
    required String? unitId,
    required DateTime startDate,
    required DateTime endDate,
  });

  Future<DefaultResponse<ReviewListResponse>> getReviews({
    required String token,
  });

  Future<DefaultResponse<ReviewDetailsResponse>> getReviewById({
    required String token,
    required String id,
  });

  Future<DefaultResponse<List<ConnectionStatus>>> getConnectionStatuses({
    required String token,
    required String unitId,
  });

  Future<DefaultResponse<List<UnitTemperature>>> getTemperatures({
    required String token,
    required String unitId,
  });
}

@Singleton(as: Api1cService)
class Api1cServiceImpl implements Api1cService {
  Api1cServiceImpl(
    @Named(InjectableNames.api1cClient) this.dio,
    @Named(InjectableNames.api1cClient) this.errorHandler,
  );

  final Dio dio;
  final DioErrorHandler<DefaultApiError> errorHandler;

  @override
  Future<DefaultResponse<DivisionsResponse>> getDivisions({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getKpiDivisionWidgets',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        DivisionsResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(
        CommonResponseError.undefinedError(e),
      );
    }
  }

  void close() {}

  @override
  Future<DefaultResponse<MetricsResponse>> getMetrics({
    required String token,
    String? divisionId,
    required int period,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'planFact',
        params: {
          'token': token,
          'divisionId': divisionId,
          'period': period,
        },
        test: true,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        MetricsResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(
        CommonResponseError.undefinedError(e),
      );
    }
  }

  @override
  Future<DefaultResponse<DivisionUnitsResponse>> getDivisionUnits({
    required String token,
    required String divisionId,
    required int period,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getDivisionUnits',
        params: {
          'token': token,
          'divisionId': divisionId,
          'period': period,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final raw = response.result;
      final parsed = DivisionUnitsResponse.fromJson(raw);
      // Store raw ingredients for later extraction
      _lastRawIngredients = (raw['ingredients'] as List<dynamic>?)
              ?.cast<Map<String, dynamic>>() ??
          [];
      return ApiResponse.success(parsed);
    } catch (e) {
      return ApiResponse.error(
        CommonResponseError.undefinedError(e),
      );
    }
  }

  /// Raw ingredients from the last getDivisionUnits call.
  List<Map<String, dynamic>> _lastRawIngredients = [];
  List<Map<String, dynamic>> get lastRawIngredients => _lastRawIngredients;

  @override
  Future<DefaultResponse<bool>> inventarization({
    required InventarizationResponse order,
    required String token,
  }) async {
    try {
      final orderJson = order.toJson(true);
      orderJson['token'] = token;

      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСДокументами.newInventory',
        params: orderJson,
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['success'] == true);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<bool>> discarding({
    required InventarizationResponse order,
    required String token,
  }) async {
    try {
      final orderJson = order.toJson(true);
      orderJson['token'] = token;

      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСДокументами.newWriteOff',
        params: orderJson,
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['success'] == true);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> createNewRequest({
    required CreateVendistaRequestBody body,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.newRequests',
        params: body.toJson(),
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<String>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<VendistaRequestItemResponse>>> getAllRequests({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.allRequests',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        response.result
            .map<VendistaRequestItemResponse>(
              (e) => VendistaRequestItemResponse.fromJson(e),
            )
            .toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<int>>> getTerminals({
    required VendistaTerminalsBody body,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getTerminals',
        params: body.toJson(),
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<int>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> getRegions({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getRegions',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<String>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> getDistricts({
    required String token,
    String? region,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getDistricts',
        params: {
          'token': token,
          'region': region,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<String>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> getCities({
    required String token,
    String? district,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getCities',
        params: {
          'token': token,
          'district': district,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<String>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<String>>> getVAT({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getVAT',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result.cast<String>());
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<bool>> addRequestData({
    required NewDataRequest data,
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.newRequestData',
        params: {
          ...data.toJson(),
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['success'] == true);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<OrgInfoResponse>> getOrgInfo({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСЗаявками.getOrgInfo',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(OrgInfoResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<MetricPeriodResponse>> getMetricPeriods({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getPlanFactFilters',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          MetricPeriodResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReportsResponse>> getReports(
      {required String token}) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getListOfReports',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        ReportsResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReportDataResponse>> getReportData({
    required String token,
    required String id,
    required String? unitId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getReportById',
        params: {
          'token': token,
          'id': id,
          'cashRegisterId': unitId,
          'start': startDate.toUtc().toIso8601String(),
          'end': endDate.toUtc().toIso8601String(),
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        ReportDataResponse.fromJson(response.result['report']),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReviewDetailsResponse>> getReviewById({
    required String token,
    required String id,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getReviewById',
        params: {
          'token': token,
          'id': id,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        ReviewDetailsResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<ReviewListResponse>> getReviews({
    required String token,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<Map<String, dynamic>>(
        client: dio,
        method: 'getListOfReviews',
        params: {
          'token': token,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        ReviewListResponse.fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> closeWorkShift({
    required String token,
    required String storeId,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<dynamic>(
        client: dio,
        method: 'хлвк_АпиРаботыСДокументами.closeWorkShift',
        params: {
          'token': token,
          'cashOffice': storeId,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<ConnectionStatus>>> getConnectionStatuses({
    required String token,
    required String unitId,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСДокументами.getConnections',
        params: {
          'token': token,
          'id': unitId,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        response.result.map((e) => ConnectionStatus.fromJson(e)).toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<UnitTemperature>>> getTemperatures({
    required String token,
    required String unitId,
  }) async {
    try {
      final response = await errorHandler.jsonRpc<List<dynamic>>(
        client: dio,
        method: 'хлвк_АпиРаботыСДокументами.getTemperature',
        params: {
          'token': token,
          'id': unitId,
        },
        test: true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        response.result.map((e) => UnitTemperature.fromJson(e)).toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
