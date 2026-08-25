import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sosedifedi/domain/bloc/create_new_vendista_request_bloc/create_new_vendista_request_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

abstract class VendistaAuthFormKeys {
  static const String login = 'login';
  static const String password = 'password';
}

@RoutePage()
class VendistaAuthScreen extends StatefulWidget {
  const VendistaAuthScreen({super.key});

  @override
  State<VendistaAuthScreen> createState() => _VendistaAuthScreenState();
}

class _VendistaAuthScreenState extends State<VendistaAuthScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorScheme.of(context).surface,
      child: FormBuilder(
        key: _formKey,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    AppInsets.padding16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppInsets.padding16,
                    children: [
                      const VendistaAuthScreenTitleWidget(),
                      Column(
                        children: [
                          FormBuilderTextField(
                            name: VendistaAuthFormKeys.login,
                            autofocus: true,
                            decoration: _inputDecoration(
                              LocaleKeys
                                  .createVendistaRequestScreen_vendistaAuthScreen_login
                                  .tr(context: context),
                            ),
                            validator: FormBuilderValidators.required(),
                          ),
                          const SizedBox(
                            height: AppInsets.padding10,
                          ),
                          FormBuilderTextField(
                            name: VendistaAuthFormKeys.password,
                            obscureText: true,
                            decoration: _inputDecoration(
                              LocaleKeys
                                  .createVendistaRequestScreen_vendistaAuthScreen_password
                                  .tr(context: context),
                            ),
                            validator: FormBuilderValidators.required(),
                          ),
                        ],
                      ),
                      VendistaAuthActionButton(onPressed: _onActionPressed),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onActionPressed() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final login =
          _formKey.currentState?.fields[VendistaAuthFormKeys.login]?.value;
      final password =
          _formKey.currentState?.fields[VendistaAuthFormKeys.password]?.value;
      context.read<CreateNewVendistaRequestBloc>().add(
            CreateNewVendistaRequestEvent.getTerminalsPressed(
              login: login,
              password: password,
            ),
          );
    }
  }

  InputDecoration _inputDecoration(String hint) {
    final theme = Theme.of(context).inputDecorationTheme;

    final defaultBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorScheme.of(context).primary,
        width: AppInsets.padding2,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(
          AppBorderRadius.medium,
        ),
      ),
    );

    return InputDecoration(
      hintText: hint,
      hintStyle: theme.hintStyle?.copyWith(
        color: theme.labelStyle?.color,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppInsets.padding20,
        vertical: AppInsets.padding12,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: defaultBorder,
      focusedBorder: defaultBorder,
      enabledBorder: defaultBorder,
      errorBorder: defaultBorder.copyWith(
        borderSide: BorderSide(
          color: ColorScheme.of(context).error,
        ),
      ),
      focusedErrorBorder: defaultBorder.copyWith(
        borderSide: BorderSide(
          color: ColorScheme.of(context).error,
        ),
      ),
    );
  }
}

class VendistaAuthActionButton extends StatelessWidget {
  const VendistaAuthActionButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CreateNewVendistaRequestBloc>().state;
    if (state.status == CreateNewVendistaRequestStatus.loading) {
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
        LocaleKeys.createVendistaRequestScreen_vendistaAuthScreen_action
            .tr(context: context),
      ),
    );
  }
}

class VendistaAuthScreenTitleWidget extends StatelessWidget {
  const VendistaAuthScreenTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.createVendistaRequestScreen_vendistaAuthScreen_title
              .tr(context: context),
          style: TextTheme.of(context).headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(
          height: AppInsets.padding8,
        ),
        Text(
          LocaleKeys.createVendistaRequestScreen_vendistaAuthScreen_description
              .tr(context: context),
          style: TextTheme.of(context).bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
