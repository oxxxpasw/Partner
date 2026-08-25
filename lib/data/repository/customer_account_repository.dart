import 'package:sosedifedi/data/mappers/customer_account_mapper.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class CustomerAccountRepository {
  Future<DefaultResponse<CustomerAccountModel>> getCustomerAccount();

  Future<DefaultResponse<CustomerAccountModel>>
      getCustomerAccountWithTempNumber();

  Future<DefaultResponse<int>> getTemporaryCard();

  Future<DefaultResponse<Promotion>> getPromotion(String id);

  Future<DefaultResponse<dynamic>> setPromotionResult({
    required String id,
    required Map<String, dynamic> data,
    String? token,
  });

  void setUser(User? user);

  Stream<CustomerAccountModel?> get customerAccount;

  Future<void> refreshCustomerAccount();
  Future<DefaultResponse<CustomerAccountModel>> getGlobalPromotions();

  Future<DefaultResponse<Promotion>> getPromotionsByPurchase(String purchaseId);
}

@Singleton(as: CustomerAccountRepository)
class CustomerAccountRepositoryImpl extends CustomerAccountRepository {
  CustomerAccountRepositoryImpl({
    required this.customerApiService,
    required this.customerAccountMapper,
    required this.appEnvironment,
  });

  @protected
  final CustomerApiService customerApiService;
  @protected
  final CustomerAccountModelMapper customerAccountMapper;
  @protected
  final AppEnvironment appEnvironment;

  @visibleForTesting
  @protected
  User? currentUser;

  @override
  void setUser(User? user) {
    currentUser = user;
    getCustomerAccount().then((response) {
      if (response.hasError) {
        customerAccountSubject.addError(response.error);
        return;
      }
      customerAccountSubject.add(response.result);
    });
  }

  @visibleForTesting
  @protected
  final customerAccountSubject = BehaviorSubject<CustomerAccountModel?>();

  @override
  Stream<CustomerAccountModel?> get customerAccount => customerAccountSubject;

  @override
  Future<DefaultResponse<CustomerAccountModel>> getCustomerAccount() async {
    try {
      final response = currentUser == null
          ? await customerApiService.getGlobalPromotions(
              dataownerId: appEnvironment.dataownerId)
          : await customerApiService.getAccounts(token: currentUser!.token);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        customerAccountMapper.mapFromResponse(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<CustomerAccountModel>> getGlobalPromotions() async {
    try {
      final response = await customerApiService.getGlobalPromotions(
        dataownerId: appEnvironment.dataownerId,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        customerAccountMapper.mapFromResponse(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<CustomerAccountModel>>
      getCustomerAccountWithTempNumber() async {
    try {
      final response = await getCustomerAccount();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      if (response.result.card == null) {
        return ApiResponse.success(response.result);
      }
      if (currentUser == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final temporaryBonusesCardResponse = await customerApiService
          .getTemporaryBonusesCard(token: currentUser!.token);
      if (temporaryBonusesCardResponse.hasError) {
        return ApiResponse.error(temporaryBonusesCardResponse.error);
      }
      return ApiResponse.success(
        response.result.copyWith.card!(
          cardNumber: '+${temporaryBonusesCardResponse.result}',
        ),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<int>> getTemporaryCard() async {
    if (currentUser == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response = await customerApiService.getTemporaryBonusesCard(
        token: currentUser!.token);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  @override
  Future<DefaultResponse<Promotion>> getPromotion(String id) async {
    final response = await customerApiService.getPromotion(
        token: currentUser?.token, id: id);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  ///Получение временной карты
  @override
  Future<DefaultResponse<dynamic>> setPromotionResult({
    required String id,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    if (token == null) {
      return const ApiResponse.error(CommonResponseError.unAuthorized());
    }
    final response = await customerApiService.setPromotionResult(
      token: token,
      id: id,
      data: data,
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  @override
  Future<void> refreshCustomerAccount() async {
    final response = await getCustomerAccount();
    if (response.hasError) {
      customerAccountSubject.addError(response.error);
      return;
    }
    customerAccountSubject.add(response.result);
  }

  @override
  Future<DefaultResponse<Promotion>> getPromotionsByPurchase(
      String purchaseId) async {
    try {
      if (currentUser == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await customerApiService.getPromotionsByPurchase(
        token: currentUser!.token,
        purchaseId: purchaseId,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
