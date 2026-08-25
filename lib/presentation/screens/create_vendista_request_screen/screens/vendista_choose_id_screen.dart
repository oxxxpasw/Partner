import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sosedifedi/domain/bloc/create_new_vendista_request_bloc/create_new_vendista_request_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import '../form_fields/form_builder_teminal_group.dart';
import 'package:auto_route/auto_route.dart';

abstract class VendistaChooseIdFormKeys {
  static const String identifiers = 'identifiers';
}

@RoutePage()
class VendistaChooseIdScreen extends StatelessWidget {
  const VendistaChooseIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorScheme.of(context).surface,
      child: BlocBuilder<CreateNewVendistaRequestBloc,
          CreateNewVendistaRequestState>(
        buildWhen: (previous, current) {
          return previous.status != current.status;
        },
        builder: (context, state) => switch (state.status) {
          CreateNewVendistaRequestStatus.init ||
          CreateNewVendistaRequestStatus.loading =>
            const VendistaChooseIdLoadingView(),
          CreateNewVendistaRequestStatus.error =>
            const VendistaChooseIdErrorView(),
          CreateNewVendistaRequestStatus.ready ||
          CreateNewVendistaRequestStatus.creating
              when state.terminals?.isEmpty ?? true =>
            const VendistaChooseIdErrorView(),
          CreateNewVendistaRequestStatus.ready ||
          CreateNewVendistaRequestStatus.creating =>
            const VendistaChooseIdView(),
        },
      ),
    );
  }
}

class VendistaChooseIdErrorView extends StatelessWidget {
  const VendistaChooseIdErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppInsets.padding16),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                LocaleKeys
                    .createVendistaRequestScreen_vendistaChooseIDScreen_error_message
                    .tr(context: context),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          VendistaChooseIdScreenActionButtonWidget(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class VendistaChooseIdLoadingView extends StatelessWidget {
  const VendistaChooseIdLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class VendistaChooseIdView extends StatefulWidget {
  const VendistaChooseIdView({super.key});

  @override
  State<VendistaChooseIdView> createState() => _VendistaChooseIdViewState();
}

class _VendistaChooseIdViewState extends State<VendistaChooseIdView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: AppInsets.padding16,
              bottom: AppInsets.padding8,
              left: AppInsets.padding16,
              right: AppInsets.padding16,
            ),
            child: VendistaChooseIdScreenTitleWidget(),
          ),
          Expanded(
            child: CardTheme(
              data: CardTheme.of(context).copyWith(
                color: ColorScheme.of(context).surface,
              ),
              child: BlocBuilder<CreateNewVendistaRequestBloc,
                  CreateNewVendistaRequestState>(
                buildWhen: (previous, current) =>
                    previous.terminals != current.terminals,
                builder: (context, state) {
                  final options = state.terminals?.map((terminal) {
                        return FormBuilderFieldOption<int>(
                          value: terminal,
                          child: Text(
                            'id: $terminal',
                          ),
                        );
                      }).toList() ??
                      [];
                  return FormBuilderTerminalGroup<int>(
                    name: VendistaChooseIdFormKeys.identifiers,
                    options: options,
                    validator: FormBuilderValidators.required(),
                    padding: const EdgeInsets.symmetric(
                      vertical: AppInsets.padding8,
                      horizontal: AppInsets.padding16,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: AppInsets.padding16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppInsets.padding16,
              top: AppInsets.padding8,
              left: AppInsets.padding16,
              right: AppInsets.padding16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: onChooseAllPressed,
                  style: TextButton.styleFrom(
                    minimumSize: Size(
                      300.0,
                      AppMinButtonSize.medium.height,
                    ),
                  ),
                  child: Text(
                    LocaleKeys
                        .createVendistaRequestScreen_vendistaChooseIDScreen_chooseAll
                        .tr(context: context),
                  ),
                ),
                const SizedBox(
                  height: AppInsets.padding10,
                ),
                VendistaChooseIdScreenActionButtonWidget(
                  onPressed: onPressed,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onPressed() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final selectedTerminals = _formKey.currentState!
          .fields[VendistaChooseIdFormKeys.identifiers]!.value as List<int>;
      context.read<CreateNewVendistaRequestBloc>().add(
            CreateNewVendistaRequestEvent.createPressed(
              idVendista: selectedTerminals,
            ),
          );
    }
  }

  void onChooseAllPressed() {
    final terminals =
        context.read<CreateNewVendistaRequestBloc>().state.terminals ?? [];

    _formKey.currentState?.patchValue(
      {
        VendistaChooseIdFormKeys.identifiers: List<int>.from(terminals),
      },
    );
  }
}

class VendistaChooseIdScreenTitleWidget extends StatelessWidget {
  const VendistaChooseIdScreenTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.createVendistaRequestScreen_vendistaChooseIDScreen_title
              .tr(context: context),
          style: TextTheme.of(context).bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: AppInsets.padding4,
        ),
        Text(
          LocaleKeys
              .createVendistaRequestScreen_vendistaChooseIDScreen_description
              .tr(context: context),
          style: TextTheme.of(context).bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

class VendistaChooseIdScreenActionButtonWidget extends StatelessWidget {
  const VendistaChooseIdScreenActionButtonWidget({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewVendistaRequestBloc,
        CreateNewVendistaRequestState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status == CreateNewVendistaRequestStatus.creating) {
          return const SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: null,
              child: CircularProgressIndicator.adaptive(
                strokeWidth: AppInsets.padding2,
              ),
            ),
          );
        }
        return FilledButtonWithArrow(
          onPressed: onPressed,
          label: Text(
            LocaleKeys.createVendistaRequestScreen_vendistaChooseIDScreen_action
                .tr(context: context),
          ),
        );
      },
    );
  }
}
