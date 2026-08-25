import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class NewOrderInfoScreen extends StatelessWidget {
  const NewOrderInfoScreen({
    super.key,
    this.orderCreationType = OrderCreationType.order,
  });

  final OrderCreationType orderCreationType;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          right: AppInsets.padding24,
          left: AppInsets.padding24,
          top: AppInsets.padding64,
          bottom: AppInsets.padding32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.tr(
                switch (orderCreationType) {
                  OrderCreationType.order =>
                    LocaleKeys.messages_success_newOrder,
                  OrderCreationType.inventarization =>
                    LocaleKeys.messages_success_successInventarization,
                  OrderCreationType.discarding =>
                    LocaleKeys.messages_success_successDiscarding,
                },
              ),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 20,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppInsets.padding32,
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(200, AppMinButtonSize.large.height),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                context.tr(
                  LocaleKeys.messages_success_action,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
