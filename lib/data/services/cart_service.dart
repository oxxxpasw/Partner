// import 'package:injectable/injectable.dart';
// import 'package:isar/isar.dart';
// import 'package:sosedifedi/data/entities/cart/cart_entity.dart';
//
// abstract class CartService {
//   Stream<void> get cartChangeStream;
//
//   Future<CartEntity> getCart([String? userId]);
//
//   Future<int> addToCart(CartItemEntity item, [String? userId]);
//
//   Future<List<int>> addAllToCart(List<CartItemEntity> items, [String? userId]);
//
//   Future<void> incrementProduct(int itemId, [String? userId]);
//
//   Future<void> decrementProduct(int itemId, [String? userId]);
//
//   Future<void> deleteProduct(int itemId, [String? userId]);
//
//   Future<void> updateProduct(CartItemEntity item, [String? userId]);
//
//   Future<int> getCount([String? userId]);
//
//   Future<void> emptyCart([String? userId]);
//
//   Future<void> saveCart({
//     required List<CartItemEntity> items,
//     String? userId,
//     String? storeId,
//     String? fridgeId,
//   });
//
//   Future<void> deleteAllCartsByUserId(String? userId);
// }
//
// class CartServiceImpl extends CartService {
//   CartServiceImpl({
//     required this.isar,
//   });
//
//   @override
//   late Stream<void> cartChangeStream;
//
//   final Isar isar;
//
//   IsarCollection<CartEntity> get carts => isar.cartEntitys;
//
//   IsarCollection<CartItemEntity> get cartItems => isar.cartItemEntitys;
//
//   @PostConstruct(preResolve: true)
//   Future<void> init() async {
//     if (await carts.where().isEmpty()) {
//       await isar.writeTxn(() => carts.put(CartEntity()));
//     }
//     cartChangeStream =
//         carts.watchLazy(fireImmediately: true).asBroadcastStream();
//   }
//
//   @override
//   Future<int> addToCart(CartItemEntity item, [String? userId]) async {
//     final CartEntity cart =
//         await carts.where().userIdEqualTo(userId).findFirst() ??
//             await isar.writeTxn(
//               () async {
//                 final newCart = CartEntity(userId: userId);
//                 await carts.put(newCart);
//                 return newCart;
//               },
//             );
//     cart.products.add(item);
//
//     return isar.writeTxn(() async {
//       final id = await cartItems.put(item);
//       await cart.products.save();
//       return id;
//     });
//   }
//
//   @override
//   Future<void> decrementProduct(int itemId, [String? userId]) async {
//     final product = await cartItems.where().idEqualTo(itemId).findFirst();
//
//     if (product == null) {
//       return;
//     }
//
//     product.amount--;
//
//     return isar.writeTxn(() async {
//       if (product.amount <= 0) {
//         await cartItems.delete(product.id);
//       } else {
//         await cartItems.put(product);
//       }
//     });
//   }
//
//   @override
//   Future<void> deleteProduct(int itemId, [String? userId]) =>
//       isar.writeTxn(() => cartItems.where().idEqualTo(itemId).deleteFirst());
//
//   @override
//   Future<void> emptyCart([String? userId]) async {
//     final cart = await carts.where().userIdEqualTo(userId).findFirst();
//     if (cart != null) {
//       await isar.writeTxn(() async {
//         await cart.products.filter().deleteAll();
//       });
//     }
//   }
//
//   @override
//   Future<CartEntity> getCart([String? userId]) async {
//     try {
//       final cart = await carts.where().userIdEqualTo(userId).findFirst() ??
//           (await _createNewCart(userId));
//       await cart.products.load();
//       return cart;
//     } catch (e) {
//       return CartEntity(userId: userId);
//     }
//   }
//
//   Future<CartEntity> _createNewCart(String? userId) async {
//     final lastCart = await carts.where(sort: Sort.desc).anyId().findFirst();
//
//     var newCart = CartEntity(userId: userId);
//     if (lastCart != null && lastCart.userId == null) {
//       newCart = lastCart..userId = userId;
//     }
//     await isar.writeTxn(() => carts.put(newCart));
//     return newCart;
//   }
//
//   @override
//   Future<int> getCount([String? userId]) async {
//     return cartItems.filter().cart((q) => q.userIdEqualTo(userId)).count();
//   }
//
//   @override
//   Future<void> incrementProduct(int itemId, [String? userId]) async {
//     final product = await cartItems.where().idEqualTo(itemId).findFirst();
//     if (product != null) {
//       product.amount++;
//       return isar.writeTxn(() => cartItems.put(product));
//     }
//   }
//
//   @override
//   Future<void> updateProduct(CartItemEntity item, [String? userId]) =>
//       isar.writeTxn(() => cartItems.put(item));
//
//   @override
//   Future<List<int>> addAllToCart(List<CartItemEntity> items,
//       [String? userId]) async {
//     final CartEntity cart =
//         await carts.where().userIdEqualTo(userId).findFirst() ??
//             await isar.writeTxn(
//               () async {
//                 final newCart = CartEntity(userId: userId);
//                 await carts.put(newCart);
//                 return newCart;
//               },
//             );
//     cart.products.addAll(items);
//
//     return isar.writeTxn(() async {
//       final ids = await cartItems.putAll(items);
//       await cart.products.save();
//       return ids;
//     });
//   }
//
//   @override
//   Future<void> saveCart({
//     required List<CartItemEntity> items,
//     String? userId,
//     String? storeId,
//     String? fridgeId,
//   }) async {
//     return isar.writeTxn(() async {
//       final CartEntity cart = await _getCartByUserOrCreateNew(userId);
//       cart.storeId = storeId;
//       cart.fridgeId = fridgeId;
//       await cartItems.filter().cart((q) => q.idEqualTo(cart.id)).deleteAll();
//       cart.products.addAll(items);
//       await cartItems.putAll(items);
//       await cart.products.save();
//       await carts.put(cart);
//     });
//   }
//
//   Future<CartEntity> _getCartByUserOrCreateNew(String? userId) async {
//     final cart = await carts.where().userIdEqualTo(userId).findFirst();
//     if (cart != null) {
//       return cart;
//     }
//     final newCart = CartEntity(userId: userId);
//     await carts.put(newCart);
//     return newCart;
//   }
//
//   @override
//   Future<void> deleteAllCartsByUserId(String? userId) {
//     return isar.writeTxn(
//       () async {
//         final cartsForDelete =
//             await carts.where().userIdEqualTo(userId).findAll();
//         for (final cart in cartsForDelete) {
//           await cart.products.filter().deleteAll();
//           carts.delete(cart.id);
//         }
//       },
//     );
//   }
// }
