import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/domain/models/review/review.dart';

@singleton
class ReviewMapper {
  const ReviewMapper();

  Review mapReviewFromResponse(ReviewResponse review) {
    return Review(
      id: review.id,
      type: review.type,
      rate: review.rate,
      date: review.date,
      address: review.address,
      divisionId: review.divisionId,
      divisionName: review.divisionName,
    );
  }

  ReviewDetails mapReviewDetailsFromResponse(ReviewDetailsResponse details) {
    return switch (details) {
      DefaultReviewDetailsResponse() => ReviewDetails(
          rate: details.rate,
          date: details.date,
          address: details.address,
          divisionId: details.divisionId,
          divisionName: details.divisionName,
          text: details.text,
          phone: details.phone,
          photos: details.photos,
        ),
      StoreReviewDetailsResponse() => ReviewDetails.store(
          rate: details.rate,
          date: details.date,
          address: details.address,
          divisionId: details.divisionId,
          divisionName: details.divisionName,
          text: details.text,
          phone: details.phone,
          photos: details.photos,
        ),
      PurhcaseReviewDetailsResponse() => ReviewDetails.purchase(
          rate: details.rate,
          date: details.date,
          address: details.address,
          divisionId: details.divisionId,
          divisionName: details.divisionName,
          text: details.text,
          phone: details.phone,
          photos: details.photos,
          compositionOfTheCheck:
              _mapCompositionOfTheCheck(details.compositionOfTheCheck),
        ),
    };
  }

  CompositionOfTheCheck? _mapCompositionOfTheCheck(
      CompositionOfTheCheckResponse? composition) {
    if (composition == null) return null;
    return CompositionOfTheCheck(
      dateOfPurchase: composition.dateOfPurchase,
      nomenclature: composition.nomenclature?.map(_mapCheckPosition).toList(),
      quantity: composition.quantity,
      discountAmount: composition.discountAmount,
      salesAmount: composition.salesAmount,
    );
  }

  CheckPosition _mapCheckPosition(CheckPositionResponse position) {
    return CheckPosition(
      name: position.name,
      quantity: position.quantity,
    );
  }

  // ReviewStoreData? _mapStoreData(ReviewStoreDataResponse? store) {
  //   if (store == null) return null;
  //   return ReviewStoreData(
  //     id: store.id,
  //     name: store.name,
  //     address: store.address,
  //   );
  // }
  //
  // ReviewProductData? _mapProductData(ReviewProductDataResponse? product) {
  //   if (product == null) return null;
  //   return ReviewProductData(
  //     id: product.id,
  //     name: product.name,
  //   );
  // }
  //
  // ReviewPurchaseData? _mapPurchaseData(ReviewPurchaseDataResponse? purchase) {
  //   if (purchase == null) return null;
  //   return ReviewPurchaseData(
  //     id: purchase.id,
  //     createdDatetime: purchase.createdDatetime,
  //     products: _mapOrderedProducts(purchase.products),
  //     total: purchase.total,
  //     store: _mapStoreData(purchase.store),
  //   );
  // }
  //
  // List<ReviewOrderedProduct> _mapOrderedProducts(
  //     List<ReviewOrderedProductResponse> products) {
  //   return products.map((product) {
  //     return ReviewOrderedProduct(
  //       id: product.id,
  //       price: product.price,
  //       name: product.name,
  //       image: product.image,
  //       modifiers: _mapOrderedModifierGroups(product.modifiers),
  //       quantity: product.quantity,
  //       currencySymbol: product.currencySymbol,
  //     );
  //   }).toList();
  // }
  //
  // //
  // List<ReviewOrderedModifierGroup> _mapOrderedModifierGroups(
  //   List<ReviewOrderedModifierGroupResponse> modifiers,
  // ) {
  //   return modifiers.map((modifier) {
  //     return ReviewOrderedModifierGroup(
  //       name: modifier.name,
  //       options: _mapOrderedModifiers(
  //         modifier.options,
  //       ),
  //     );
  //   }).toList();
  // }
  //
  // //
  // List<ReviewOrderedModifier> _mapOrderedModifiers(
  //     List<ReviewOrderedModifierResponse> options) {
  //   return options.map((option) {
  //     return ReviewOrderedModifier(
  //       id: option.id,
  //       name: option.name,
  //       price: option.price,
  //     );
  //   }).toList();
  // }
}
