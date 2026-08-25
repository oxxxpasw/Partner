import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/reports/report_data/report_data.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key, required this.data});

  final ReportData data;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return DataTable(
      columns: _getColumns(data.columns).toList(),
      rows: _getRows(data.columns, data.rows, colors).toList(),
      headingRowColor: WidgetStatePropertyAll(colors.primary.withOpacity(0.2)),
      dataRowColor: WidgetStatePropertyAll(colors.surfaceContainer),
      dividerThickness: 0.5,
      dataRowMinHeight: 0.0,
      dataRowMaxHeight: double.infinity,
      headingRowHeight: 30.0,
      columnSpacing: AppInsets.padding16,
    );
  }

  Iterable<DataColumn> _getColumns(List<ReportDataColumn> cols) sync* {
    for (final col in cols) {
      yield DataColumn(
        label: Text(
          col.title ?? '',
        ),
        numeric: col.type == ReportDataColumnType.number,
      );
    }
  }

  Iterable<DataRow> _getRows(
    List<ReportDataColumn> cols,
    List<Map<String, dynamic>> rows,
    ColorScheme colors,
  ) sync* {
    final colNames = cols.map((col) => col.key).toList();

    for (final row in rows) {
      final WidgetStateProperty<Color>? color;

      if (row.isSummaryRow) {
        color = WidgetStatePropertyAll(colors.primary.withOpacity(0.2));
      } else if (row.hasNestedRows) {
        color = WidgetStatePropertyAll(colors.primary.withOpacity(0.1));
      } else {
        color = null;
      }

      yield DataRow(
        cells: _getCells(colNames, row).toList(),
        color: color,
      );
      if (row.hasNestedRows) {
        yield* _getRows(cols, row.getNestedRows()!, colors);
      }
    }
  }

  Iterable<DataCell> _getCells(
    List<String> cols,
    Map<String, dynamic> row,
  ) sync* {
    for (final col in cols) {
      yield DataCell(
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding4,
          ),
          child: Text(row[col]?.toString() ?? ''),
        ),
      );
    }
  }
}
