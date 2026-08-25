import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/metric_periods/metric_periods.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class PeriodSelector extends StatelessWidget {
  const PeriodSelector({
    super.key,
    required this.selectedPeriod,
    required this.onPeriodChanged,
    this.selectedColor,
    this.color,
    this.labelStyle,
    required this.items,
  });

  final MetricPeriodItem selectedPeriod;
  final ValueChanged<MetricPeriodItem> onPeriodChanged;

  final List<MetricPeriodItem> items;

  final Color? selectedColor;
  final Color? color;

  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: ListView.separated(
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: AppInsets.padding16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return RawChip(
            showCheckmark: false,
            shape: const StadiumBorder(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            labelStyle: labelStyle ??
                TextStyle(
                  color: WidgetStateColor.resolveWith(
                    (states) => _resolveLabelColor(states, context),
                  ),
                ),
            onPressed: () => onPeriodChanged(item),
            selected: item == selectedPeriod,
            color: WidgetStateProperty.resolveWith(
              (states) => _resolveColor(states, context),
            ),
            label: Text(item.name),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: AppInsets.padding4,
        ),
      ),
    );
  }

  Color _resolveColor(Set<WidgetState> states, BuildContext context) {
    if (states.contains(WidgetState.selected)) {
      return selectedColor ?? ColorScheme.of(context).surface;
    }

    return color ?? Colors.transparent;
  }

  Color _resolveLabelColor(Set<WidgetState> states, BuildContext context) {
    return ColorScheme.of(context).onSurface;
  }
}
