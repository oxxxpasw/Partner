import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import 'rating_widget.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.review,
    this.onPressed,
  });

  final Review review;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final date = switch (review.date) {
      DateTime dateTime => DateFormat('dd.MM.yyyy HH:mm').format(dateTime),
      _ => '',
    };

    final borderRadius = BorderRadius.circular(AppBorderRadius.large);

    return Card(
      color: ColorScheme.of(context).surface,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(
          color: ColorScheme.of(context).surfaceContainerHigh,
          width: 2.0,
        ),
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppInsets.padding16,
            horizontal: AppInsets.padding12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      LocaleKeys.review_title
                          .tr(context: context, args: [date]),
                      style: TextTheme.of(context).titleMedium,
                    ),
                  ),
                  Text(
                    switch (review.type) {
                      ReviewType.storeID =>
                        LocaleKeys.review_store.tr(context: context),
                      ReviewType.productID =>
                        LocaleKeys.review_product.tr(context: context),
                      ReviewType.purchaseID =>
                        LocaleKeys.review_purchase.tr(context: context),
                      ReviewType.unknown => '',
                    },
                    style: TextTheme.of(context).bodySmall?.copyWith(
                          color: ColorScheme.of(context).primary,
                        ),
                  )
                ],
              ),
              _ReviewInfoWidget(review: review),
              RatingWidget(
                rating: review.rate ?? 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ReviewInfoWidget extends StatelessWidget {
  const _ReviewInfoWidget({super.key, required this.review});

  final Review review;

  @override
  Widget build(BuildContext context) {
    final info = switch (review.type) {
      ReviewType.storeID => _getStoreString(context),
      ReviewType.productID => null,
      ReviewType.purchaseID => _getStoreString(context),
      ReviewType.unknown => null,
    };

    if (info == null || info.isEmpty) {
      return const SizedBox(
        height: AppInsets.padding8,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppInsets.padding8),
      child: Text(
        info,
      ),
    );
  }

  String? _getStoreString(BuildContext context) {
    final name = review.divisionName ?? '';
    final address = review.address ?? '';

    if (name.isEmpty && address.isEmpty) return null;

    return LocaleKeys.reviewDetailsScreen_store_text.tr(
      namedArgs: {
        'name': name,
        'address': address,
      },
    );
  }
}
