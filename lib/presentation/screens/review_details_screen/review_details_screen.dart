import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/domain/bloc/review_details_cubit/review_details_cubit.dart';
import 'package:sosedifedi/domain/models/review/review.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/screens/photo_view_screen/photo_view_screen.dart';
import 'package:sosedifedi/presentation/screens/reviews_screen/components/rating_widget.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

const _kDateFormat = 'dd.MM.yyyy HH:mm';

@RoutePage()
class ReviewDetailsScreen extends StatelessWidget implements AutoRouteWrapper {
  const ReviewDetailsScreen({
    super.key,
    @pathParam required this.reviewId,
  });

  final String reviewId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      appBar: CustomAppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
        leadingBackgroundColor: Theme.of(context).colorScheme.surface,
        title: BlocBuilder<ReviewDetailsCubit, ReviewDetailsState>(
          builder: (context, state) {
            final date = state.review?.date;

            if (date == null) return const SizedBox.shrink();
            return Text(
              LocaleKeys.reviewDetailsScreen_title.tr(
                context: context,
                args: [
                  DateFormat(_kDateFormat).format(date),
                ],
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: SrBlocBuilder<ReviewDetailsCubit, ReviewDetailsState,
            ReviewDetailsSr>(
          onSR: (context, sr) => switch (sr) {
            ReviewDetailsErrorSr(:final message) => Messenger.showMessage(
                context: context,
                message: message,
              ),
          },
          builder: (context, state) => switch (state.status) {
            ReviewDetailsStateStatus.loading ||
            ReviewDetailsStateStatus.init =>
              const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ReviewDetailsStateStatus.ready => ReviewDetailsView(
                review: state.review!,
              ),
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReviewDetailsCubit>(
      create: (context) => GetIt.I.get(param1: reviewId)..loadData(),
      child: this,
    );
  }
}

class ReviewDetailsView extends StatelessWidget {
  const ReviewDetailsView({
    super.key,
    required this.review,
  });

  final ReviewDetails review;

  @override
  Widget build(BuildContext context) {
    final children = _buildChildren(context);

    return DividerTheme(
      data: DividerTheme.of(context).copyWith(
        space: AppInsets.padding24,
        thickness: 0.5,
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(AppInsets.padding16),
        physics: const ScrollPhysics(),
        itemCount: children.length,
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  void _open(BuildContext context, int index) {
    // MultiImageProvider multiImageProvider = MultiImageProvider(
    //   review.images?.map((image) {
    //         return CachedNetworkImageProvider(image);
    //       }).toList() ??
    //       [],
    // );
    //
    // showImageViewerPager(context, multiImageProvider, onPageChanged: (page) {
    //   print("page changed to $page");
    // }, onViewerDismissed: (page) {
    //   print("dismissed while on page $page");
    // });
    Navigator.push(
      context,
      PageRouteBuilder(
        fullscreenDialog: true,
        opaque: false,
        pageBuilder: (_, anim, ___) => PhotoViewScreen(
          images: review.photos ?? [],
          initialIndex: index,
          animation: anim,
        ),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    final review = this.review;

    final date = switch (review.date) {
      DateTime dateTime => DateFormat(_kDateFormat).format(dateTime),
      _ => '',
    };
    return [
      ReviewTopDetailWidget(review: review),
      ReviewDetailItemWidget(
        title: Text(
          LocaleKeys.reviewDetailsScreen_phone_label.tr(
            context: context,
            args: [date],
          ),
        ),
        child: PhoneField(
          phone: review.phone ?? '',
        ),
      ),
      ReviewDetailItemWidget(
        title: Text(
          LocaleKeys.reviewDetailsScreen_score_label.tr(
            context: context,
            args: [date],
          ),
        ),
        child: RatingWidget(
          rating: review.rate ?? 0,
        ),
      ),
      ReviewDetailItemWidget(
        title: Text(
          LocaleKeys.reviewDetailsScreen_comment_label.tr(
            context: context,
            args: [date],
          ),
        ),
        child: SelectableText(review.text ?? ''),
      ),
      if (review is PurhcaseReviewDetails &&
          review.compositionOfTheCheck != null)
        ReviewPurchaseDetails(purchase: review.compositionOfTheCheck!),
      if (review.photos != null && review.photos!.isNotEmpty)
        ReviewDetailItemWidget(
          title: Text(
            LocaleKeys.reviewDetailsScreen_attachments_label.tr(
              context: context,
              args: [date],
            ),
          ),
          child: GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: AppInsets.padding8,
              crossAxisSpacing: AppInsets.padding8,
              mainAxisExtent: 100,
            ),
            children: review.photos!.map((image) {
              return ImageThumbnail(
                image: image,
                onPressed: () => _open(
                  context,
                  review.photos!.indexOf(image),
                ),
              );
            }).toList(),
          ),
        ),
    ];
  }
}

class ReviewTopDetailWidget extends StatelessWidget {
  const ReviewTopDetailWidget({
    super.key,
    required this.review,
  });

  final ReviewDetails review;

  @override
  Widget build(BuildContext context) {
    String? title;
    String? child;

    switch (review) {
      case StoreReviewDetails():
        title = LocaleKeys.reviewDetailsScreen_store_label.tr();
        child = LocaleKeys.reviewDetailsScreen_store_text.tr(namedArgs: {
          'name': review.divisionName ?? '',
          'address': review.address ?? '',
        });
        break;
      case PurhcaseReviewDetails():
        title = LocaleKeys.reviewDetailsScreen_store_label.tr();
        child = LocaleKeys.reviewDetailsScreen_store_text.tr(namedArgs: {
          'name': review.divisionName ?? '',
          'address': review.address ?? '',
        });
        break;
      case DefaultReviewDetails():
        return const SizedBox.shrink();
    }

    return ReviewDetailItemWidget(
      title: Text(title ?? ''),
      child: Text(child ?? ''),
    );
  }
}

class ReviewPurchaseDetails extends StatelessWidget {
  const ReviewPurchaseDetails({super.key, required this.purchase});

  final CompositionOfTheCheck purchase;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (final product in purchase.nomenclature ?? []) {
      children.add(_buildItem(product));
    }

    final date = switch (purchase.dateOfPurchase) {
      DateTime dateTime => DateFormat(_kDateFormat).format(dateTime),
      _ => '',
    };

    return ReviewDetailItemWidget(
      title: Text(
        LocaleKeys.reviewDetailsScreen_purchase_label.tr(args: [date]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppInsets.padding8,
        children: children,
      ),
    );
  }

  Widget _buildItem(CheckPosition product) {
    final quantity = product.quantity ?? 1.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppInsets.padding8,
      children: [
        Expanded(
          child: Text(product.name ?? ''),
        ),
        Text(LocaleKeys.orderHistory_amount.tr(
          args: [
            if (quantity % 1 == 0)
              quantity.toInt().toString()
            else
              quantity.toString(),
          ],
        )),
      ],
    );
  }
}

class ReviewDetailItemWidget extends StatelessWidget {
  const ReviewDetailItemWidget({
    super.key,
    required this.title,
    required this.child,
  });

  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final titleTextStyle = theme.inputDecorationTheme.floatingLabelStyle ??
        theme.textTheme.labelMedium;

    final childTextStyle = theme.textTheme.bodyMedium?.copyWith(
      fontWeight: FontWeight.w500,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppInsets.padding4,
      children: [
        DefaultTextStyle.merge(
          style: titleTextStyle?.copyWith(
            color: const Color(0xFF868686),
          ),
          child: title,
        ),
        DefaultTextStyle.merge(
          style: childTextStyle,
          child: child,
        ),
      ],
    );
  }
}

class ImageThumbnail extends StatelessWidget {
  const ImageThumbnail({
    super.key,
    required this.image,
    required this.onPressed,
  });

  final String image;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Hero(
        tag: image,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _copyToClipboard(context),
      child: Row(
        spacing: AppInsets.padding8,
        children: [
          Expanded(
            child: Text(
              phone,
              style: TextTheme.of(context).titleMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
            ),
          ),
          Icon(
            DerevenkaDobrenkaIcons.copy,
            color: colorScheme.primary,
          ),
        ],
      ),
    );
  }

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: phone));
    context.showToast(
      Row(
        spacing: AppInsets.padding8,
        children: [
          Icon(
            DerevenkaDobrenkaIcons.check,
            color: ColorScheme.of(context).primary,
          ),
          Text(
            LocaleKeys.reviewDetailsScreen_phone_copied.tr(
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}
