import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// A list of Checkboxes for selecting multiple options
class FormBuilderCheckboxGroupWithoutDec<T> extends FormBuilderField<List<T>> {
  final List<FormBuilderFieldOption<T>> options;
  final Color? activeColor;
  final VisualDensity? visualDensity;
  final Color? checkColor;
  final Color? focusColor;
  final Color? hoverColor;
  final List<T>? disabled;
  final MaterialTapTargetSize? materialTapTargetSize;
  final bool tristate;
  final Axis wrapDirection;
  final WrapAlignment wrapAlignment;
  final double wrapSpacing;
  final WrapAlignment wrapRunAlignment;
  final double wrapRunSpacing;
  final WrapCrossAlignment wrapCrossAxisAlignment;
  final TextDirection? wrapTextDirection;
  final VerticalDirection wrapVerticalDirection;
  final Widget? separator;
  final ControlAffinity controlAffinity;
  final OptionsOrientation orientation;

  /// Added to each item if provided.
  /// [GroupedCheckbox] applies the [itemDecorator] to each Checkbox
  final BoxDecoration? itemDecoration;

  /// Creates a list of Checkboxes for selecting multiple options
  FormBuilderCheckboxGroupWithoutDec({
    super.key,
    required super.name,
    this.visualDensity,
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
    this.focusColor,
    this.hoverColor,
    this.disabled,
    this.materialTapTargetSize,
    this.tristate = false,
    this.wrapDirection = Axis.horizontal,
    this.wrapAlignment = WrapAlignment.start,
    this.wrapSpacing = 0.0,
    this.wrapRunAlignment = WrapAlignment.start,
    this.wrapRunSpacing = 0.0,
    this.wrapCrossAxisAlignment = WrapCrossAlignment.start,
    this.wrapTextDirection,
    this.wrapVerticalDirection = VerticalDirection.down,
    this.separator,
    this.controlAffinity = ControlAffinity.leading,
    this.orientation = OptionsOrientation.wrap,
    this.itemDecoration,
  }) : super(
          builder: (FormFieldState<List<T>?> field) {
            final state = field as _FormBuilderCheckboxGroupWithoutDecState<T>;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GroupedCheckbox<T>(
                  orientation: orientation,
                  value: state.value,
                  options: options,
                  onChanged: (val) {
                    final newVal = val.lastOrNull;
                    field.didChange([if (newVal != null) newVal]);
                  },
                  disabled: state.enabled
                      ? disabled
                      : options.map((e) => e.value).toList(),
                  activeColor: activeColor,
                  visualDensity: visualDensity,
                  focusColor: focusColor,
                  checkColor: checkColor,
                  materialTapTargetSize: materialTapTargetSize,
                  hoverColor: hoverColor,
                  tristate: tristate,
                  wrapAlignment: wrapAlignment,
                  wrapCrossAxisAlignment: wrapCrossAxisAlignment,
                  wrapDirection: wrapDirection,
                  wrapRunAlignment: wrapRunAlignment,
                  wrapRunSpacing: wrapRunSpacing,
                  wrapSpacing: wrapSpacing,
                  wrapTextDirection: wrapTextDirection,
                  wrapVerticalDirection: wrapVerticalDirection,
                  separator: separator,
                  controlAffinity: controlAffinity,
                  itemDecoration: itemDecoration,
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      state.errorText ?? '',
                      style: Theme.of(state.context)
                          .inputDecorationTheme
                          .errorStyle,
                    ),
                  ),
              ],
            );
          },
        );

  @override
  FormBuilderFieldState<FormBuilderCheckboxGroupWithoutDec<T>, List<T>>
      createState() => _FormBuilderCheckboxGroupWithoutDecState<T>();
}

class _FormBuilderCheckboxGroupWithoutDecState<T> extends FormBuilderFieldState<
    FormBuilderCheckboxGroupWithoutDec<T>, List<T>> {}
