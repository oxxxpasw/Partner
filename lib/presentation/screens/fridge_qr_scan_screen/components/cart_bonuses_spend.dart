import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_switch/cusom_switch_list_tile.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/utils.dart';

class CartBonusesSpend extends StatefulWidget {
  const CartBonusesSpend({super.key});

  @override
  State<CartBonusesSpend> createState() => _CartBonusesSpendState();
}

class _CartBonusesSpendState extends State<CartBonusesSpend> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      buildWhen: (oldState, state) =>
          oldState.useBonuses != state.useBonuses ||
          oldState.canUseBonuses != state.canUseBonuses ||
          oldState.bonusesToSpent != state.bonusesToSpent,
      builder: (context, state) {
        if (!state.canUseBonuses) {
          return const SizedBox.shrink();
        }

        final Widget title;
        Widget? subtitle;

        if (state.bonusesToSpent != null && state.useBonuses) {
          title = Row(
            children: [
              Text(
                context.tr(
                  LocaleKeys.cart_bonusesCanSpent,
                  args: [
                    state.bonusesToSpent!.toFormatString(),
                  ],
                ),
                style: TextTheme.of(context).bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Icon(
                DerevenkaDobrenkaIcons.coffeeSwipeBonuses,
                color: ColorScheme.of(context).primary,
                size: 15.0,
              ),
            ],
          );
          subtitle = Text(
            context.tr(LocaleKeys.cart_aboutBonusesSum),
            style: TextTheme.of(context).labelSmall?.copyWith(
                  color: ColorScheme.of(context).primary,
                  fontWeight: FontWeight.w400,
                ),
          );
        } else {
          title = Text(
            context.tr(LocaleKeys.cart_useBonuses),
            style: TextTheme.of(context).bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          );
        }

        return ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
          clipBehavior: Clip.antiAlias,
          child: Material(
            child: CustomSwitchListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: AppInsets.padding8,
                horizontal: AppInsets.padding16,
              ),
              value: state.useBonuses,
              onChanged: (value) {
                setState(() {
                  context
                      .read<CartBloc>()
                      .add(CartEvent.onUseBonusesChange(useBonuses: value));
                  HapticFeedback.mediumImpact();
                });
              },
              titleAlignment: ListTileTitleAlignment.titleHeight,
              title: title,
              subtitle: subtitle,
            ),
          ),
        );
      },
    );
  }
}
