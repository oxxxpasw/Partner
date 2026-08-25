import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/domain/bloc/choose_payment_type_bloc/choose_payment_type_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class ChoosePaymentTypeScreen3 extends StatelessWidget implements AutoRouteWrapper {
  const ChoosePaymentTypeScreen3({
    super.key,
    required this.storeId,
  });

  final String storeId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ChoosePaymentTypeBloc>(
      create: (context) => GetIt.I.get(
        param1: storeId,
      )..add(const ChoosePaymentTypeEvent.init()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: Text(
          context.tr(LocaleKeys.choosePayment_title),
        ),
      ),
      body: const SafeArea(
        child: ChoosePaymentTypeBody(),
      ),
    );
  }
}

class ChoosePaymentTypeBody extends StatelessWidget {
  const ChoosePaymentTypeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<ChoosePaymentTypeBloc, ChoosePaymentTypeState,
        ChoosePaymentTypeSr>(
      onSR: (context, sr) => switch (sr) {
        ChoosePaymentTypeErrorSr(:final error) => Messenger.showMessage(
            context: context,
            message: error,
          ),
        ChoosePaymentTypeOpenRegisterCardSr(:final url) => context.router
            .push(
              WebViewPaymentRoute(url: url.toString()),
            )
            .then(
              (_) => context.mounted
                  ? context
                      .read<ChoosePaymentTypeBloc>()
                      .add(const ChoosePaymentTypeEvent.init())
                  : null,
            ),
        ChoosePaymentTypeSelectSr(:final type) => context.router.pop(type),
        ChoosePaymentTypeCardDeactivatedSr() => Messenger.showMessage(
            context: context,
            message:
                context.tr(LocaleKeys.choosePayment_successCardDeactivation),
            messageType: MessageType.success,
          ),
      },
      buildWhen: (current, previous) => current.status != previous.status,
      builder: (context, state) => switch (state.status) {
        ChoosePaymentTypeStatus.loading ||
        ChoosePaymentTypeStatus.init =>
          const ChoosePaymentTypeLoading(),
        ChoosePaymentTypeStatus.ready => const ChoosePaymentTypeList(),
      },
    );
  }
}

class ChoosePaymentTypeLoading extends StatelessWidget {
  const ChoosePaymentTypeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class ChoosePaymentTypeList extends StatelessWidget {
  const ChoosePaymentTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: BlocBuilder<ChoosePaymentTypeBloc, ChoosePaymentTypeState>(
            builder: (context, state) {
              final list = state.paymentTypes!;
              return ListView.separated(
                itemCount: list.length,
                padding: const EdgeInsets.all(AppInsets.padding16),
                itemBuilder: (context, index) {
                  final item = list[index];
                  return PaymentTypeWidget(
                    paymentType: item,
                    isSelected: item == state.selectedPaymentType,
                    onPressed: () {
                      context
                          .read<ChoosePaymentTypeBloc>()
                          .add(ChoosePaymentTypeEvent.paymentTypePressed(item));
                    },
                    onDeactivate: switch (item) {
                      LinkedCardPaymentType() => () =>
                          _deactivateCard(context, item),
                      _ => null,
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: AppInsets.padding16,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: FilledButtonWithArrow(
            label: BlocBuilder<ChoosePaymentTypeBloc, ChoosePaymentTypeState>(
              buildWhen: (previous, current) =>
                  previous.selectedPaymentType != current.selectedPaymentType,
              builder: (context, state) {
                final text =
                    state.selectedPaymentType is RegisterCardPaymentType
                        ? context.tr(LocaleKeys.choosePayment_linkCard)
                        : context.tr(LocaleKeys.cart_checkout);
                return Text(text);
              },
            ),
            onPressed: () => context
                .read<ChoosePaymentTypeBloc>()
                .add(const ChoosePaymentTypeEvent.submitPressed()),
          ),
        )
      ],
    );
  }

  Future<void> _deactivateCard(
      BuildContext context, LinkedCardPaymentType type) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      title: Text(
        context.tr(
          LocaleKeys.choosePayment_deactivateCardDialog_title,
          args: [type.name],
        ),
      ),
      defaultAction: ConfirmDialogAction.cancel,
    );
    if (context.mounted && result == ConfirmDialogResult.confirm) {
      context
          .read<ChoosePaymentTypeBloc>()
          .add(ChoosePaymentTypeEvent.deactivateCardPressed(type));
    }
  }
}

class PaymentTypeWidget extends StatelessWidget {
  const PaymentTypeWidget({
    super.key,
    required this.paymentType,
    this.isSelected = false,
    this.onPressed,
    this.onDeactivate,
  });

  final PaymentType paymentType;
  final bool isSelected;
  final VoidCallback? onPressed;
  final VoidCallback? onDeactivate;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      enabled: true,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: paymentType.imageUrl,
                  width: 40,
                  height: 40.0,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: AppInsets.padding16,
                ),
                Expanded(
                  child: Text(
                    paymentType.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                if (onDeactivate != null) ...[
                  const Spacer(),
                  IconButton(
                    icon: const Icon(CupertinoIcons.delete),
                    onPressed: onDeactivate,
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
