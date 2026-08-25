import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';
import 'package:sosedifedi/domain/bloc/vendista_request_details_bloc/vendista_request_details_bloc.dart';
import 'package:sosedifedi/domain/models/org_info/org_info.dart';
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

import 'components/form_fields/form_builder_checkbox_group_without_dec.dart';

@RoutePage()
class VendistaRequestDetailsScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const VendistaRequestDetailsScreen({
    super.key,
    required this.request,
  });

  final VendistaRequest request;

  @override
  State<VendistaRequestDetailsScreen> createState() =>
      _VendistaRequestDetailsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<VendistaRequestDetailsBloc>(
      create: (context) => GetIt.I.get<VendistaRequestDetailsBloc>(
        param1: request,
      )..add(const VendistaRequestDetailsEvent.init()),
      child: this,
    );
  }
}

class _VendistaRequestDetailsScreenState
    extends State<VendistaRequestDetailsScreen> {
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        leadingBackgroundColor: colors.surface,
        backgroundColor: colors.surfaceContainer,
        title: Text(
          LocaleKeys.vendistaRequestDetailsScreen_title.tr(
            context: context,
            args: [widget.request.idVendista.toString()],
          ),
        ),
      ),
      backgroundColor: colors.surfaceContainer,
      body: SafeArea(
        child: SrBlocBuilder<VendistaRequestDetailsBloc,
            VendistaRequestDetailsState, VendistaRequestDetailsSr>(
          onSR: (context, sr) => switch (sr) {
            VendistaRequestDetailsErrorSr(:final message) =>
              Messenger.showMessage(
                context: context,
                message: message,
              ),
            VendistaRequestDetailsSuccessSr() => () async {
                context.router.root.pop();
                if (!context.mounted) return;
                showPopup(
                  useRootNavigator: true,
                  context: context,
                  title: Text(
                    LocaleKeys
                        .vendistaRequestDetailsScreen_successMessage_message
                        .tr(
                      context: context,
                    ),
                  ),
                  confirmLabel: Text(
                    LocaleKeys
                        .vendistaRequestDetailsScreen_successMessage_action
                        .tr(
                      context: context,
                    ),
                  ),
                );
              }(),
            VendistaRequestDetailsShowLoadingOverlaySr() =>
              createLoadingOverlay(context),
            VendistaRequestDetailsHideLoadingOverlaySr() => removeOverlay(),
          },
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            return switch (state.status) {
              VendistaRequestDetailsStatus.init ||
              VendistaRequestDetailsStatus.loading =>
                const VendistaRequestDetailsLoadingView(),
              VendistaRequestDetailsStatus.ready ||
              VendistaRequestDetailsStatus.updating =>
                VendistaRequestDetailsView(orgInfo: state.orgInfo),
            };
          },
        ),
      ),
    );
  }

  void createLoadingOverlay(BuildContext context) {
    _overlayEntry = OverlayEntry(
        builder: (context) => const VendistaRequestDetailsLoadingOverlay());
    Overlay.of(context).insert(_overlayEntry!);
  }

  void removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry?.dispose();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    removeOverlay();
    super.dispose();
  }
}

class VendistaRequestDetailsLoadingOverlay extends StatelessWidget {
  const VendistaRequestDetailsLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black54,
      child: Center(
          child: switch (Theme.of(context).platform) {
        TargetPlatform.iOS ||
        TargetPlatform.macOS =>
          const CupertinoActivityIndicator(
            color: Colors.white,
          ),
        TargetPlatform.android ||
        TargetPlatform.fuchsia ||
        TargetPlatform.linux ||
        TargetPlatform.windows =>
          const CircularProgressIndicator(
            color: Colors.white,
          ),
      }),
    );
  }
}

class VendistaRequestDetailsLoadingView extends StatelessWidget {
  const VendistaRequestDetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

abstract class VendistaRequestDetailsFormKeys {
  static const orgType = 'orgType';
  static const orgName = 'orgName';
  static const vat = 'vat';
  static const city = 'city';
  static const district = 'district';
  static const region = 'region';
  static const address = 'address';
  static const name = 'name';
  static const latitude = 'latitude';
  static const longitude = 'longitude';
}

class VendistaRequestDetailsView extends StatefulWidget {
  const VendistaRequestDetailsView({super.key, this.orgInfo});

  final OrgInfo? orgInfo;

  @override
  State<VendistaRequestDetailsView> createState() =>
      _VendistaRequestDetailsViewState();
}

class _VendistaRequestDetailsViewState
    extends State<VendistaRequestDetailsView> {
  final _formKey = GlobalKey<FormBuilderState>();

  // FormBuilderState get _formBuilderState => _formKey.currentState!;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).inputDecorationTheme;

    final decoration = InputDecoration(
      hintStyle: theme.labelStyle,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      floatingLabelStyle: theme.floatingLabelStyle?.copyWith(
        color: ColorScheme.of(context).onSurface,
      ),
    );

    final orgInfo = widget.orgInfo;

    return FormBuilder(
      key: _formKey,
      initialValue: {
        VendistaRequestDetailsFormKeys.orgType: orgInfo?.entityType != null
            ? <OrganizationType>[orgInfo!.entityType!]
            : null,
        VendistaRequestDetailsFormKeys.orgName: orgInfo?.organization,
        VendistaRequestDetailsFormKeys.vat: orgInfo?.vat,
      },
      child: AutofillGroup(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(
              AppInsets.padding16,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight - AppInsets.padding16 * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys
                            .vendistaRequestDetailsScreen_form_orgData_title
                            .tr(
                          context: context,
                        ),
                        style: TextTheme.of(context).titleMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorScheme.of(context).primary,
                            ),
                      ),
                      const SizedBox(
                        height: AppInsets.padding8,
                      ),
                      FormBuilderCheckboxGroupWithoutDec<OrganizationType>(
                        name: VendistaRequestDetailsFormKeys.orgType,
                        enabled: true,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        wrapSpacing: AppInsets.padding16,
                        wrapRunSpacing: AppInsets.padding8,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: LocaleKeys
                                .vendistaRequestDetailsScreen_form_errors_empty_orgType
                                .tr(context: context),
                          ),
                          FormBuilderValidators.maxLength(1),
                        ]),
                        options: [
                          FormBuilderFieldOption<OrganizationType>(
                            value: OrganizationType.individual,
                            child: Text(
                              LocaleKeys
                                  .vendistaRequestDetailsScreen_form_orgData_type_options_individual
                                  .tr(context: context),
                            ),
                          ),
                          FormBuilderFieldOption<OrganizationType>(
                            value: OrganizationType.legal,
                            child: Text(
                              LocaleKeys
                                  .vendistaRequestDetailsScreen_form_orgData_type_options_legal
                                  .tr(context: context),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      FormBuilderTextField(
                        name: VendistaRequestDetailsFormKeys.orgName,
                        enabled: true,
                        autofillHints: const [
                          AutofillHints.organizationName,
                        ],
                        decoration: decoration.copyWith(
                          labelText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_orgData_name_label
                              .tr(context: context),
                          hintText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_orgData_name_hint
                              .tr(context: context),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      BlocBuilder<VendistaRequestDetailsBloc,
                          VendistaRequestDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.vat != current.vat,
                        builder: (context, state) {
                          final vat = state.vat ?? [];
                          final items = <DropdownMenuItem<String>>[];

                          for (final vatItem in vat) {
                            items.add(
                              DropdownMenuItem<String>(
                                value: vatItem,
                                child: Text(vatItem),
                              ),
                            );
                          }
                          return FormBuilderDropdown(
                            name: VendistaRequestDetailsFormKeys.vat,
                            enabled: orgInfo?.vat == null,
                            menuMaxHeight: 200,
                            decoration: decoration.copyWith(
                              labelText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_orgData_vat_label
                                  .tr(context: context),
                              hintText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_orgData_vat_hint
                                  .tr(context: context),
                            ),
                            items: items,
                          );
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding20,
                      ),
                      Text(
                        LocaleKeys
                            .vendistaRequestDetailsScreen_form_sellingPointData_title
                            .tr(
                          context: context,
                        ),
                        style: TextTheme.of(context).titleMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorScheme.of(context).primary,
                            ),
                      ),
                      const SizedBox(
                        height: AppInsets.padding8,
                      ),
                      Text(
                        LocaleKeys
                            .vendistaRequestDetailsScreen_form_sellingPointData_description
                            .tr(
                          context: context,
                        ),
                        style: TextTheme.of(context)
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      BlocBuilder<VendistaRequestDetailsBloc,
                          VendistaRequestDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.regions != current.regions,
                        builder: (context, state) {
                          final regions = state.regions ?? [];
                          final items = <DropdownMenuItem<String>>[];

                          for (final region in regions) {
                            items.add(
                              DropdownMenuItem<String>(
                                value: region,
                                child: Text(region),
                              ),
                            );
                          }
                          return FormBuilderDropdown(
                            name: VendistaRequestDetailsFormKeys.region,
                            menuMaxHeight: 200,
                            hint: Text(
                              LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_region_hint
                                  .tr(context: context),
                              style: decoration.hintStyle,
                            ),
                            onChanged: (value) {
                              if (value == null) return;
                              context.read<VendistaRequestDetailsBloc>().add(
                                    VendistaRequestDetailsEvent.regionChanged(
                                      value,
                                    ),
                                  );
                            },
                            decoration: decoration.copyWith(
                              labelText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_region_label
                                  .tr(context: context),
                              hintText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_region_hint
                                  .tr(context: context),
                            ),
                            items: items,
                            validator: FormBuilderValidators.required(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      BlocBuilder<VendistaRequestDetailsBloc,
                          VendistaRequestDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.districts != current.districts,
                        builder: (context, state) {
                          final districts = state.districts ?? [];
                          final items = <DropdownMenuItem<String>>[];

                          for (final district in districts) {
                            items.add(
                              DropdownMenuItem<String>(
                                value: district,
                                child: Text(district),
                              ),
                            );
                          }
                          return FormBuilderDropdown(
                            name: VendistaRequestDetailsFormKeys.district,
                            menuMaxHeight: 200,
                            hint: Text(
                              LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_district_hint
                                  .tr(context: context),
                              style: decoration.hintStyle,
                            ),
                            onChanged: (value) {
                              if (value == null) return;
                              context.read<VendistaRequestDetailsBloc>().add(
                                    VendistaRequestDetailsEvent.districtChanged(
                                      value,
                                    ),
                                  );
                            },
                            decoration: decoration.copyWith(
                              labelText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_district_label
                                  .tr(context: context),
                              hintText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_district_hint
                                  .tr(context: context),
                            ),
                            items: items,
                            validator: FormBuilderValidators.required(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      BlocBuilder<VendistaRequestDetailsBloc,
                          VendistaRequestDetailsState>(
                        buildWhen: (previous, current) =>
                            previous.cities != current.cities,
                        builder: (context, state) {
                          final cities = state.cities ?? [];
                          final items = <DropdownMenuItem<String>>[];

                          for (final city in cities) {
                            items.add(
                              DropdownMenuItem<String>(
                                value: city,
                                child: Text(city),
                              ),
                            );
                          }
                          return FormBuilderDropdown(
                            name: VendistaRequestDetailsFormKeys.city,
                            menuMaxHeight: 200,
                            hint: Text(
                              LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_city_hint
                                  .tr(context: context),
                              style: decoration.hintStyle,
                            ),
                            decoration: decoration.copyWith(
                              labelText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_city_label
                                  .tr(context: context),
                              hintText: LocaleKeys
                                  .vendistaRequestDetailsScreen_form_sellingPointData_city_hint
                                  .tr(context: context),
                            ),
                            items: items,
                            validator: FormBuilderValidators.required(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      FormBuilderTextField(
                        name: VendistaRequestDetailsFormKeys.address,
                        autofillHints: const [
                          AutofillHints.fullStreetAddress,
                        ],
                        decoration: decoration.copyWith(
                          labelText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_sellingPointData_address_label
                              .tr(context: context),
                          hintText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_sellingPointData_address_hint
                              .tr(context: context),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      FormBuilderTextField(
                        name: VendistaRequestDetailsFormKeys.name,
                        decoration: decoration.copyWith(
                          labelText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_sellingPointData_name_label
                              .tr(context: context),
                          hintText: LocaleKeys
                              .vendistaRequestDetailsScreen_form_sellingPointData_name_hint
                              .tr(context: context),
                        ),
                        validator: FormBuilderValidators.required(),
                      ),
                      const SizedBox(
                        height: AppInsets.padding12,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: VendistaRequestDetailsFormKeys.latitude,
                              keyboardType: TextInputType.number,
                              valueTransformer: _parseStringToDouble,
                              inputFormatters: const [
                                CoordinateInputFormatter()
                              ],
                              decoration: decoration.copyWith(
                                labelText: LocaleKeys
                                    .vendistaRequestDetailsScreen_form_sellingPointData_latitude_label
                                    .tr(context: context),
                                hintText: LocaleKeys
                                    .vendistaRequestDetailsScreen_form_sellingPointData_latitude_hint
                                    .tr(context: context),
                              ),
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(),
                                  _coordsValidator,
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: AppInsets.padding10,
                          ),
                          Expanded(
                            child: FormBuilderTextField(
                              name: VendistaRequestDetailsFormKeys.longitude,
                              keyboardType: TextInputType.number,
                              valueTransformer: _parseStringToDouble,
                              inputFormatters: const [
                                CoordinateInputFormatter()
                              ],
                              decoration: decoration.copyWith(
                                labelText: LocaleKeys
                                    .vendistaRequestDetailsScreen_form_sellingPointData_longitude_label
                                    .tr(context: context),
                                hintText: LocaleKeys
                                    .vendistaRequestDetailsScreen_form_sellingPointData_longitude_hint
                                    .tr(context: context),
                              ),
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(),
                                  _coordsValidator,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: AppInsets.padding16,
                    ),
                    child: VendistaRequestDetailsActionButton(
                      onPressed: _onConfirmPressed,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  double? _parseStringToDouble(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return double.tryParse(value);
  }

  void _onConfirmPressed() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final formData = _formKey.currentState?.value;
      if (formData != null) {
        context.read<VendistaRequestDetailsBloc>().add(
              VendistaRequestDetailsEvent.confirmPressed(
                organizationType:
                    formData[VendistaRequestDetailsFormKeys.orgType].first,
                organizationName:
                    formData[VendistaRequestDetailsFormKeys.orgName],
                vat: formData[VendistaRequestDetailsFormKeys.vat],
                city: formData[VendistaRequestDetailsFormKeys.city],
                address: formData[VendistaRequestDetailsFormKeys.address],
                name: formData[VendistaRequestDetailsFormKeys.name],
                latitude:
                    formData[VendistaRequestDetailsFormKeys.latitude] ?? 0.0,
                longitude:
                    formData[VendistaRequestDetailsFormKeys.longitude] ?? 0.0,
              ),
            );
      }
    }
  }

  String? _coordsValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    if (double.tryParse(value) == null ||
        !RegExp(r'^\d{0,2}\.?\d{0,6}$').hasMatch(value)) {
      return LocaleKeys
          .vendistaRequestDetailsScreen_form_errors_invalidCoordinates
          .tr(context: context);
    }

    return null;
  }
}

class VendistaRequestDetailsActionButton extends StatelessWidget {
  const VendistaRequestDetailsActionButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<VendistaRequestDetailsBloc>().state;

    if (state.status != VendistaRequestDetailsStatus.ready) {
      return const SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: null,
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2.0,
          ),
        ),
      );
    }

    return FilledButtonWithArrow(
      onPressed: onPressed,
      label: Text(
        LocaleKeys.vendistaRequestDetailsScreen_form_confirm
            .tr(context: context),
      ),
    );
  }
}

class CoordinateInputFormatter extends TextInputFormatter {
  const CoordinateInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String digitsOnly = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    if (digitsOnly.length > 8) {
      digitsOnly = digitsOnly.substring(0, 8);
    }

    String formatted = '';
    int offset = newValue.selection.end;

    if (digitsOnly.length <= 2) {
      formatted = digitsOnly;
    } else {
      formatted = '${digitsOnly.substring(0, 2)}.${digitsOnly.substring(2)}';
    }

    int newOffset = offset;

    int oldDigitsLength =
        oldValue.text.replaceAll(RegExp(r'[^0-9]'), '').length;

    if (digitsOnly.length > 2) {
      if (offset > 2 && oldDigitsLength <= 2) {
        newOffset += 1;
      } else if (offset == 3 && oldDigitsLength > digitsOnly.length) {
        newOffset -= 1;
      }
    } else if (offset > 2) {
      newOffset = formatted.length;
    }

    newOffset = newOffset.clamp(0, formatted.length);

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
