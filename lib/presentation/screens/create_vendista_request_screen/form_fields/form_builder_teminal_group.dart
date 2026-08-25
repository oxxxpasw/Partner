import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

/// A list of Checkboxes for selecting multiple options
class FormBuilderTerminalGroup<T> extends FormBuilderField<List<T>> {
  final List<FormBuilderFieldOption<T>> options;
  final Color? activeColor;
  final Color? checkColor;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? wrapTextDirection;
  final VerticalDirection verticalDirection;
  final double spacing;
  final EdgeInsetsGeometry? padding;

  /// Creates a list of Checkboxes for selecting multiple options
  FormBuilderTerminalGroup({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    super.restorationId,
    required this.options,
    this.activeColor,
    this.checkColor,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.wrapTextDirection,
    this.verticalDirection = VerticalDirection.down,
    this.spacing = AppInsets.padding10,
    this.padding,
  }) : super(
          builder: (FormFieldState<List<T>?> field) {
            final state = field as _FormBuilderTerminalGroupState<T>;

            final widgetList = <Widget>[];

            for (final option in options) {
              widgetList.add(
                TerminalItem<T>(
                  option: option,
                  isSelected: state.value?.contains(option.value) ?? false,
                  activeColor:
                      activeColor ?? ColorScheme.of(state.context).primary,
                  checkColor: checkColor ??
                      ColorScheme.of(state.context).surfaceContainerHighest,
                  onPressed: () {
                    if (state.value == null) {
                      state.didChange([option.value]);
                    } else {
                      final newValue = List<T>.from(state.value!);
                      if (newValue.contains(option.value)) {
                        newValue.remove(option.value);
                      } else {
                        newValue.add(option.value);
                      }
                      state.didChange(newValue);
                    }
                  },
                ),
              );
            }

            return SingleChildScrollView(
              padding: padding ?? EdgeInsets.zero,
              child: Column(
                spacing: spacing,
                textDirection: wrapTextDirection,
                crossAxisAlignment: crossAxisAlignment,
                verticalDirection: verticalDirection,
                children: widgetList,
              ),
            );
          },
        );

  @override
  FormBuilderFieldState<FormBuilderTerminalGroup<T>, List<T>> createState() =>
      _FormBuilderTerminalGroupState<T>();
}

class _FormBuilderTerminalGroupState<T>
    extends FormBuilderFieldState<FormBuilderTerminalGroup<T>, List<T>> {}

class TerminalItem<T> extends StatelessWidget {
  const TerminalItem({
    super.key,
    required this.option,
    this.isSelected = false,
    required this.activeColor,
    required this.checkColor,
    this.onPressed,
  });

  final FormBuilderFieldOption<T> option;
  final bool isSelected;

  final VoidCallback? onPressed;

  final Color activeColor;
  final Color checkColor;

  @override
  Widget build(BuildContext context) {
    ShapeBorder border = CardTheme.of(context).shape ??
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppBorderRadius.large,
          ),
        );
    if (border is OutlinedBorder) {
      border = border.copyWith(
        side: BorderSide(
          color: isSelected ? activeColor : checkColor,
          width: AppInsets.padding2,
        ),
      );
    }

    return Card(
      shape: border,
      child: InkWell(
        onTap: onPressed,
        customBorder: border,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppInsets.padding12,
            vertical: AppInsets.padding16,
          ),
          child: Center(
            child: option.child ?? Text(option.value.toString()),
          ),
        ),
      ),
    );
  }
}
