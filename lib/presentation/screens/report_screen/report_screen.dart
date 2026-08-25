import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/bloc/report_data_cubit/report_data_cubit.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/table/table.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class ReportScreen extends StatelessWidget implements AutoRouteWrapper {
  const ReportScreen({
    super.key,
    @pathParam required this.id,
    @queryParam required this.unitId,
  });

  final String id;
  final String? unitId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SrBlocBuilder<ReportDataCubit, ReportDataState, ReportDataSr>(
          onSR: (context, sr) => switch (sr) {
            ReportDataErrorSr(:final message) =>
              Messenger.showMessage(context: context, message: message),
          },
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) => switch (state.status) {
            ReportDataStatus.init ||
            ReportDataStatus.loading =>
              const Center(child: CircularProgressIndicator.adaptive()),
            ReportDataStatus.ready => const ReportView(),
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReportDataCubit>(
      create: (context) => GetIt.I.get(param1: id, param2: unitId)..loadData(),
      child: this,
    );
  }
}

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppInsets.padding12,
        left: AppInsets.padding16,
        right: AppInsets.padding16,
        bottom: AppInsets.padding16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 38,
              height: 4,
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const ReportTitle(),
          const ReportDateTimePicker(),
          const SizedBox(height: 8),
          const ReportSummaryCards(),
          const SizedBox(height: 12),
          const Expanded(
            child: ReportTable(),
          ),
          const SizedBox(height: 12),
          const ReportExportButton(),
        ],
      ),
    );
  }
}

class ReportSummaryCards extends StatelessWidget {
  const ReportSummaryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportDataCubit, ReportDataState>(
      buildWhen: (previous, current) => previous.data != current.data,
      builder: (context, state) {
        final rows = state.data?.rows ?? [];
        if (rows.isEmpty) return const SizedBox.shrink();

        int totalCups = 0;
        double totalSum = 0.0;

        for (final r in rows) {
          final name = (r['name'] ?? '').toString();
          if (name.contains('всего') || name.contains('Всего') || name.contains('отсутствуют')) {
            continue;
          }
          final cnt = int.tryParse(r['count']?.toString() ?? '0') ?? 0;
          final sum = double.tryParse(r['sum']?.toString() ?? '0.0') ?? 0.0;
          totalCups += cnt;
          totalSum += sum;
        }

        // Если не было детализированных строк, берем общую
        if (totalCups == 0 && rows.isNotEmpty) {
          final r0 = rows.first;
          totalCups = int.tryParse(r0['count']?.toString() ?? '0') ?? 0;
          totalSum = double.tryParse(r0['sum']?.toString() ?? '0.0') ?? 0.0;
        }

        final avgCheck = totalCups > 0 ? (totalSum / totalCups) : 0.0;

        return Row(
          children: [
            Expanded(
              child: _MetricCard(
                title: 'Чашек',
                value: '$totalCups шт',
                icon: Icons.coffee_rounded,
                color: const Color(0xFF194F2F),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _MetricCard(
                title: 'Выручка',
                value: '${totalSum.toStringAsFixed(2)} BYN',
                icon: Icons.payments_outlined,
                color: const Color(0xFFD97706),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _MetricCard(
                title: 'Ср. чек',
                value: '${avgCheck.toStringAsFixed(2)} BYN',
                icon: Icons.analytics_outlined,
                color: const Color(0xFF4F46E5),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 14, color: color),
              const SizedBox(width: 4),
              Text(
                title,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: Color(0xFF1E293B),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class ReportTable extends StatelessWidget {
  const ReportTable({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportDataCubit, ReportDataState>(
      buildWhen: (previous, current) => previous.data != current.data,
      builder: (context, state) {
        final data = state.data;

        if (data == null || data.rows.isEmpty) {
          return Center(
            child: Text(
              LocaleKeys.reportDataScreen_chooseAnotherPeriod
                  .tr(context: context),
              style: TextTheme.of(context).bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            ),
          );
        }
        return SingleChildScrollView(
          controller: ModalScrollController.of(context),
          child: TableWidget(
            data: data,
          ),
        );
      },
    );
  }
}

class ReportTitle extends StatelessWidget {
  const ReportTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportDataCubit, ReportDataState>(
      buildWhen: (previous, current) =>
          previous.data?.options != current.data?.options,
      builder: (context, state) {
        final title = state.data?.options.title ?? 'Отчет по продажам';
        return Padding(
          padding: const EdgeInsets.only(
            bottom: AppInsets.padding8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextTheme.of(context).titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () => Navigator.of(context).pop(),
                splashRadius: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ReportDateTimePicker extends StatelessWidget {
  const ReportDateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportDataCubit, ReportDataState>(
      buildWhen: (previous, current) =>
          previous.startDate != current.startDate ||
          previous.endDate != current.endDate,
      builder: (context, state) {
        final start = state.startDate ?? DateTime.now().startOfDay;
        final end = state.endDate ?? DateTime.now().endOfDay;

        final String format = _needShowYear(start, end) ? 'dd MMMM yyyy' : 'dd MMMM';
        final String labelText = DateUtils.isSameDay(start, end)
            ? DateFormat(format).format(start)
            : '${DateFormat(format).format(start)} - ${DateFormat(format).format(end)}';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quick preset chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _PresetChip(
                    label: 'Сегодня',
                    isSelected: DateUtils.isSameDay(start, DateTime.now()) &&
                        DateUtils.isSameDay(end, DateTime.now()),
                    onTap: () => context.read<ReportDataCubit>().resetPeriod(),
                  ),
                  const SizedBox(width: 6),
                  _PresetChip(
                    label: 'Вчера',
                    isSelected: DateUtils.isSameDay(
                      start,
                      DateTime.now().subtract(const Duration(days: 1)),
                    ) && DateUtils.isSameDay(
                      end,
                      DateTime.now().subtract(const Duration(days: 1)),
                    ),
                    onTap: () {
                      final yesterday = DateTime.now().subtract(const Duration(days: 1));
                      context.read<ReportDataCubit>().changePeriod(start: yesterday, end: yesterday);
                    },
                  ),
                  const SizedBox(width: 6),
                  _PresetChip(
                    label: '7 дней',
                    isSelected: DateUtils.isSameDay(
                      start,
                      DateTime.now().subtract(const Duration(days: 6)),
                    ) && DateUtils.isSameDay(end, DateTime.now()),
                    onTap: () {
                      final start7 = DateTime.now().subtract(const Duration(days: 6));
                      context.read<ReportDataCubit>().changePeriod(start: start7, end: DateTime.now());
                    },
                  ),
                  const SizedBox(width: 6),
                  _PresetChip(
                    label: '30 дней',
                    isSelected: DateUtils.isSameDay(
                      start,
                      DateTime.now().subtract(const Duration(days: 29)),
                    ) && DateUtils.isSameDay(end, DateTime.now()),
                    onTap: () {
                      final start30 = DateTime.now().subtract(const Duration(days: 29));
                      context.read<ReportDataCubit>().changePeriod(start: start30, end: DateTime.now());
                    },
                  ),
                  const SizedBox(width: 6),
                  _PresetChip(
                    label: 'Всё время',
                    isSelected: start.year == 2020,
                    onTap: () {
                      context.read<ReportDataCubit>().changePeriod(
                            start: DateTime(2020, 1, 1),
                            end: DateTime.now(),
                          );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Date Range Custom Selector button
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () async {
                final date = await showDateRangePicker(
                  context: context,
                  errorFormatText: LocaleKeys.reportDataScreen_errorFormatText.tr(context: context),
                  errorInvalidRangeText: LocaleKeys.reportDataScreen_errorFormatText.tr(context: context),
                  errorInvalidText: LocaleKeys.reportDataScreen_errorFormatText.tr(context: context),
                  initialDateRange: DateTimeRange(start: start, end: end),
                  firstDate: DateTime(2020),
                  lastDate: DateTime.now(),
                  builder: (context, child) {
                    if (child == null) return const SizedBox.shrink();
                    final theme = Theme.of(context);
                    return Theme(
                      data: theme.copyWith(
                        colorScheme: ColorScheme.fromSeed(
                          seedColor: theme.colorScheme.primary,
                        ),
                      ),
                      child: child,
                    );
                  },
                );

                if (date == null || !context.mounted) return;

                context.read<ReportDataCubit>().changePeriod(
                      start: date.start,
                      end: date.end,
                    );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF194F2F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.calendar_today_rounded, size: 14, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      labelText,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.arrow_drop_down_rounded, size: 18, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  bool _needShowYear(DateTime date1, DateTime date2) {
    final now = DateTime.now();
    return now.year != date1.year || now.year != date2.year;
  }
}

class _PresetChip extends StatelessWidget {
  const _PresetChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1E293B) : const Color(0xFFF1F5F9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFF1E293B) : const Color(0xFFE2E8F0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: isSelected ? Colors.white : const Color(0xFF475569),
          ),
        ),
      ),
    );
  }
}

class ReportExportButton extends StatefulWidget {
  const ReportExportButton({super.key});

  @override
  State<ReportExportButton> createState() => _ReportExportButtonState();
}

class _ReportExportButtonState extends State<ReportExportButton> {
  bool _isDownloading = false;

  Future<void> _downloadAndOpen(String exportUrl, String startStr, String endStr) async {
    setState(() => _isDownloading = true);
    try {
      final tempDir = await getTemporaryDirectory();
      final fileName = 'sales_drinks_${startStr}_$endStr.xlsx';
      final filePath = '${tempDir.path}/$fileName';

      final dio = Dio();
      await dio.download(
        exportUrl,
        filePath,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: true,
        ),
      );

      final file = File(filePath);
      if (await file.exists() && (await file.length()) > 0) {
        final openResult = await OpenFilex.open(filePath);
        if (openResult.type != ResultType.done) {
          await Share.shareXFiles(
            [XFile(filePath)],
            text: 'Отчет по продажам ($startStr — $endStr)',
          );
        }
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('✅ Отчет успешно выгружен!'),
              backgroundColor: Color(0xFF194F2F),
              duration: Duration(seconds: 2),
            ),
          );
        }
      } else {
        throw Exception('Файл пустой или не был получен от сервера');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Ошибка выгрузки: $e'),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isDownloading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportDataCubit, ReportDataState>(
      builder: (context, state) {
        final start = state.startDate ?? DateTime.now().startOfDay;
        final end = state.endDate ?? DateTime.now().endOfDay;
        final startStr = DateFormat('yyyy-MM-dd').format(start);
        final endStr = DateFormat('yyyy-MM-dd').format(end);
        final token = GetIt.I<AuthRepository>().authData?.user.token ?? '';

        final exportUrl =
            'https://api.coffeelil.online/api/v1/partner/sales/export?source=all&date_from=$startStr&date_to=$endStr&token=$token';

        return SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF194F2F),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
            ),
            icon: _isDownloading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : const Icon(Icons.file_download_outlined, size: 20),
            label: Text(
              _isDownloading
                  ? 'Формирование отчета...'
                  : 'Выгрузить продажи со статистикой (Excel)',
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
            onPressed: _isDownloading
                ? null
                : () => _downloadAndOpen(exportUrl, startStr, endStr),
          ),
        );
      },
    );
  }
}
