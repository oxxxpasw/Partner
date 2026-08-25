import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/reports/report_data_response/report_data_response.dart';
import 'package:sosedifedi/domain/models/reports/report_data/report_data.dart';

@singleton
class ReportMapper {
  ReportData mapFromResponse(ReportDataResponse response) {
    return ReportData(
      options: ReportDataOptions(
        title: response.options?.title,
      ),
      columns: response.columns.map(_columnFromResponse).toList(),
      rows: response.rows,
    );
  }

  ReportDataColumn _columnFromResponse(ReportDataColumnResponse response) {
    return ReportDataColumn(
      key: response.key,
      title: response.title,
      type: switch (response.type) {
        ReportDataResponseDataType.string => ReportDataColumnType.string,
        ReportDataResponseDataType.number => ReportDataColumnType.number,
        ReportDataResponseDataType.unknown => ReportDataColumnType.unknown,
      },
      isVisible: response.isVisible,
    );
  }
}
