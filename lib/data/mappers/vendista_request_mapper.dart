import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/org_info_response/org_info_response.dart';
import 'package:sosedifedi/data/models/vendista_request/vendista_request_response/vendista_request_response.dart';
import 'package:sosedifedi/domain/models/org_info/org_info.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';

@singleton
class VendistaRequestMapper {
  VendistaRequest mapVendistaRequestFromResponse(
    VendistaRequestItemResponse item,
  ) {
    return VendistaRequest(
      code: item.code,
      date: item.date,
      idVendista: item.idVendista,
      status: switch (item.status) {
        VendistaRequestStatusResponse.underReview =>
          VendistaRequestStatus.underReview,
        VendistaRequestStatusResponse.rejected =>
          VendistaRequestStatus.rejected,
        VendistaRequestStatusResponse.verified =>
          VendistaRequestStatus.verified,
        VendistaRequestStatusResponse.unknown => VendistaRequestStatus.unknown,
        VendistaRequestStatusResponse.dataSent =>
          VendistaRequestStatus.dataSent,
        VendistaRequestStatusResponse.closed => VendistaRequestStatus.closed,
      },
    );
  }

  OrgInfo mapOrgInfoFromResponse(OrgInfoResponse item) {
    return OrgInfo(
      organization: switch (item.organization) {
        String value when value.isNotEmpty => value,
        _ => null,
      },
      vat: switch (item.vat) {
        String value when value.isNotEmpty => value,
        _ => null,
      },
      entityType: item.entityType,
    );
  }
}
