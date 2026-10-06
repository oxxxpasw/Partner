// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_stock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FridgeStockItemDto {

 String get productId; String get name; String get barcode; double get price; double get quantity;
/// Create a copy of FridgeStockItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockItemDtoCopyWith<FridgeStockItemDto> get copyWith => _$FridgeStockItemDtoCopyWithImpl<FridgeStockItemDto>(this as FridgeStockItemDto, _$identity);

  /// Serializes this FridgeStockItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,barcode,price,quantity);

@override
String toString() {
  return 'FridgeStockItemDto(productId: $productId, name: $name, barcode: $barcode, price: $price, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $FridgeStockItemDtoCopyWith<$Res>  {
  factory $FridgeStockItemDtoCopyWith(FridgeStockItemDto value, $Res Function(FridgeStockItemDto) _then) = _$FridgeStockItemDtoCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String barcode, double price, double quantity
});




}
/// @nodoc
class _$FridgeStockItemDtoCopyWithImpl<$Res>
    implements $FridgeStockItemDtoCopyWith<$Res> {
  _$FridgeStockItemDtoCopyWithImpl(this._self, this._then);

  final FridgeStockItemDto _self;
  final $Res Function(FridgeStockItemDto) _then;

/// Create a copy of FridgeStockItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? barcode = null,Object? price = null,Object? quantity = null,}) {
  return _then(FridgeStockItemDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FridgeStockItemDto].
extension FridgeStockItemDtoPatterns on FridgeStockItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeStockItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeStockItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeStockItemDto value)  $default,){
final _that = this;
switch (_that) {
case _FridgeStockItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeStockItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeStockItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String barcode,  double price,  double quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeStockItemDto() when $default != null:
return $default(_that.productId,_that.name,_that.barcode,_that.price,_that.quantity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String barcode,  double price,  double quantity)  $default,) {final _that = this;
switch (_that) {
case _FridgeStockItemDto():
return $default(_that.productId,_that.name,_that.barcode,_that.price,_that.quantity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String barcode,  double price,  double quantity)?  $default,) {final _that = this;
switch (_that) {
case _FridgeStockItemDto() when $default != null:
return $default(_that.productId,_that.name,_that.barcode,_that.price,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FridgeStockItemDto implements FridgeStockItemDto {
  const _FridgeStockItemDto({required this.productId, required this.name, required this.barcode, this.price = 0, this.quantity = 0});
  factory _FridgeStockItemDto.fromJson(Map<String, dynamic> json) => _$FridgeStockItemDtoFromJson(json);

@override final  String productId;
@override final  String name;
@override final  String barcode;
@override@JsonKey() final  double price;
@override@JsonKey() final  double quantity;

/// Create a copy of FridgeStockItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeStockItemDtoCopyWith<_FridgeStockItemDto> get copyWith => __$FridgeStockItemDtoCopyWithImpl<_FridgeStockItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FridgeStockItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeStockItemDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,barcode,price,quantity);

@override
String toString() {
  return 'FridgeStockItemDto(productId: $productId, name: $name, barcode: $barcode, price: $price, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$FridgeStockItemDtoCopyWith<$Res> implements $FridgeStockItemDtoCopyWith<$Res> {
  factory _$FridgeStockItemDtoCopyWith(_FridgeStockItemDto value, $Res Function(_FridgeStockItemDto) _then) = __$FridgeStockItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String barcode, double price, double quantity
});




}
/// @nodoc
class __$FridgeStockItemDtoCopyWithImpl<$Res>
    implements _$FridgeStockItemDtoCopyWith<$Res> {
  __$FridgeStockItemDtoCopyWithImpl(this._self, this._then);

  final _FridgeStockItemDto _self;
  final $Res Function(_FridgeStockItemDto) _then;

/// Create a copy of FridgeStockItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? barcode = null,Object? price = null,Object? quantity = null,}) {
  return _then(_FridgeStockItemDto(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$FridgeStockResponse {

@JsonKey(name: 'device') FridgeStockDeviceDto get device;@JsonKey(name: 'items') List<FridgeStockItemDto> get items;
/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockResponseCopyWith<FridgeStockResponse> get copyWith => _$FridgeStockResponseCopyWithImpl<FridgeStockResponse>(this as FridgeStockResponse, _$identity);

  /// Serializes this FridgeStockResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockResponse&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,device,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'FridgeStockResponse(device: $device, items: $items)';
}


}

/// @nodoc
abstract mixin class $FridgeStockResponseCopyWith<$Res>  {
  factory $FridgeStockResponseCopyWith(FridgeStockResponse value, $Res Function(FridgeStockResponse) _then) = _$FridgeStockResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device') FridgeStockDeviceDto device,@JsonKey(name: 'items') List<FridgeStockItemDto> items
});


$FridgeStockDeviceDtoCopyWith<$Res> get device;

}
/// @nodoc
class _$FridgeStockResponseCopyWithImpl<$Res>
    implements $FridgeStockResponseCopyWith<$Res> {
  _$FridgeStockResponseCopyWithImpl(this._self, this._then);

  final FridgeStockResponse _self;
  final $Res Function(FridgeStockResponse) _then;

/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? device = null,Object? items = null,}) {
  return _then(FridgeStockResponse(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FridgeStockDeviceDto,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FridgeStockItemDto>,
  ));
}
/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FridgeStockDeviceDtoCopyWith<$Res> get device {
  
  return $FridgeStockDeviceDtoCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [FridgeStockResponse].
extension FridgeStockResponsePatterns on FridgeStockResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeStockResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeStockResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeStockResponse value)  $default,){
final _that = this;
switch (_that) {
case _FridgeStockResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeStockResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeStockResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device')  FridgeStockDeviceDto device, @JsonKey(name: 'items')  List<FridgeStockItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeStockResponse() when $default != null:
return $default(_that.device,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device')  FridgeStockDeviceDto device, @JsonKey(name: 'items')  List<FridgeStockItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _FridgeStockResponse():
return $default(_that.device,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device')  FridgeStockDeviceDto device, @JsonKey(name: 'items')  List<FridgeStockItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _FridgeStockResponse() when $default != null:
return $default(_that.device,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FridgeStockResponse implements FridgeStockResponse {
  const _FridgeStockResponse({@JsonKey(name: 'device') required this.device, @JsonKey(name: 'items')  List<FridgeStockItemDto> items = const []}): _items = items;
  factory _FridgeStockResponse.fromJson(Map<String, dynamic> json) => _$FridgeStockResponseFromJson(json);

@override@JsonKey(name: 'device') final  FridgeStockDeviceDto device;
 final  List<FridgeStockItemDto> _items;
@override@JsonKey(name: 'items') List<FridgeStockItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeStockResponseCopyWith<_FridgeStockResponse> get copyWith => __$FridgeStockResponseCopyWithImpl<_FridgeStockResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FridgeStockResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeStockResponse&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,device,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'FridgeStockResponse(device: $device, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FridgeStockResponseCopyWith<$Res> implements $FridgeStockResponseCopyWith<$Res> {
  factory _$FridgeStockResponseCopyWith(_FridgeStockResponse value, $Res Function(_FridgeStockResponse) _then) = __$FridgeStockResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device') FridgeStockDeviceDto device,@JsonKey(name: 'items') List<FridgeStockItemDto> items
});


@override $FridgeStockDeviceDtoCopyWith<$Res> get device;

}
/// @nodoc
class __$FridgeStockResponseCopyWithImpl<$Res>
    implements _$FridgeStockResponseCopyWith<$Res> {
  __$FridgeStockResponseCopyWithImpl(this._self, this._then);

  final _FridgeStockResponse _self;
  final $Res Function(_FridgeStockResponse) _then;

/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? device = null,Object? items = null,}) {
  return _then(_FridgeStockResponse(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FridgeStockDeviceDto,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FridgeStockItemDto>,
  ));
}

/// Create a copy of FridgeStockResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FridgeStockDeviceDtoCopyWith<$Res> get device {
  
  return $FridgeStockDeviceDtoCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// @nodoc
mixin _$FridgeStockDeviceDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'mqtt_id') String? get mqttId;@JsonKey(name: 'store_id') String? get storeId;@JsonKey(name: 'store_name') String? get storeName;
/// Create a copy of FridgeStockDeviceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockDeviceDtoCopyWith<FridgeStockDeviceDto> get copyWith => _$FridgeStockDeviceDtoCopyWithImpl<FridgeStockDeviceDto>(this as FridgeStockDeviceDto, _$identity);

  /// Serializes this FridgeStockDeviceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockDeviceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mqttId, mqttId) || other.mqttId == mqttId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mqttId,storeId,storeName);

@override
String toString() {
  return 'FridgeStockDeviceDto(id: $id, name: $name, mqttId: $mqttId, storeId: $storeId, storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class $FridgeStockDeviceDtoCopyWith<$Res>  {
  factory $FridgeStockDeviceDtoCopyWith(FridgeStockDeviceDto value, $Res Function(FridgeStockDeviceDto) _then) = _$FridgeStockDeviceDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'mqtt_id') String? mqttId,@JsonKey(name: 'store_id') String? storeId,@JsonKey(name: 'store_name') String? storeName
});




}
/// @nodoc
class _$FridgeStockDeviceDtoCopyWithImpl<$Res>
    implements $FridgeStockDeviceDtoCopyWith<$Res> {
  _$FridgeStockDeviceDtoCopyWithImpl(this._self, this._then);

  final FridgeStockDeviceDto _self;
  final $Res Function(FridgeStockDeviceDto) _then;

/// Create a copy of FridgeStockDeviceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? mqttId = freezed,Object? storeId = freezed,Object? storeName = freezed,}) {
  return _then(FridgeStockDeviceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mqttId: freezed == mqttId ? _self.mqttId : mqttId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FridgeStockDeviceDto].
extension FridgeStockDeviceDtoPatterns on FridgeStockDeviceDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeStockDeviceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeStockDeviceDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeStockDeviceDto value)  $default,){
final _that = this;
switch (_that) {
case _FridgeStockDeviceDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeStockDeviceDto value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeStockDeviceDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mqtt_id')  String? mqttId, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'store_name')  String? storeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeStockDeviceDto() when $default != null:
return $default(_that.id,_that.name,_that.mqttId,_that.storeId,_that.storeName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mqtt_id')  String? mqttId, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'store_name')  String? storeName)  $default,) {final _that = this;
switch (_that) {
case _FridgeStockDeviceDto():
return $default(_that.id,_that.name,_that.mqttId,_that.storeId,_that.storeName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'mqtt_id')  String? mqttId, @JsonKey(name: 'store_id')  String? storeId, @JsonKey(name: 'store_name')  String? storeName)?  $default,) {final _that = this;
switch (_that) {
case _FridgeStockDeviceDto() when $default != null:
return $default(_that.id,_that.name,_that.mqttId,_that.storeId,_that.storeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FridgeStockDeviceDto implements FridgeStockDeviceDto {
  const _FridgeStockDeviceDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'mqtt_id') this.mqttId, @JsonKey(name: 'store_id') this.storeId, @JsonKey(name: 'store_name') this.storeName});
  factory _FridgeStockDeviceDto.fromJson(Map<String, dynamic> json) => _$FridgeStockDeviceDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'mqtt_id') final  String? mqttId;
@override@JsonKey(name: 'store_id') final  String? storeId;
@override@JsonKey(name: 'store_name') final  String? storeName;

/// Create a copy of FridgeStockDeviceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeStockDeviceDtoCopyWith<_FridgeStockDeviceDto> get copyWith => __$FridgeStockDeviceDtoCopyWithImpl<_FridgeStockDeviceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FridgeStockDeviceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeStockDeviceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.mqttId, mqttId) || other.mqttId == mqttId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,mqttId,storeId,storeName);

@override
String toString() {
  return 'FridgeStockDeviceDto(id: $id, name: $name, mqttId: $mqttId, storeId: $storeId, storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class _$FridgeStockDeviceDtoCopyWith<$Res> implements $FridgeStockDeviceDtoCopyWith<$Res> {
  factory _$FridgeStockDeviceDtoCopyWith(_FridgeStockDeviceDto value, $Res Function(_FridgeStockDeviceDto) _then) = __$FridgeStockDeviceDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'mqtt_id') String? mqttId,@JsonKey(name: 'store_id') String? storeId,@JsonKey(name: 'store_name') String? storeName
});




}
/// @nodoc
class __$FridgeStockDeviceDtoCopyWithImpl<$Res>
    implements _$FridgeStockDeviceDtoCopyWith<$Res> {
  __$FridgeStockDeviceDtoCopyWithImpl(this._self, this._then);

  final _FridgeStockDeviceDto _self;
  final $Res Function(_FridgeStockDeviceDto) _then;

/// Create a copy of FridgeStockDeviceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? mqttId = freezed,Object? storeId = freezed,Object? storeName = freezed,}) {
  return _then(_FridgeStockDeviceDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mqttId: freezed == mqttId ? _self.mqttId : mqttId // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FridgeStockMovementDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'kind') String get kind;@JsonKey(name: 'product_name') String? get productName;@JsonKey(name: 'quantity') double get quantity;@JsonKey(name: 'note') String? get note;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of FridgeStockMovementDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockMovementDtoCopyWith<FridgeStockMovementDto> get copyWith => _$FridgeStockMovementDtoCopyWithImpl<FridgeStockMovementDto>(this as FridgeStockMovementDto, _$identity);

  /// Serializes this FridgeStockMovementDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockMovementDto&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,productName,quantity,note,createdAt);

@override
String toString() {
  return 'FridgeStockMovementDto(id: $id, kind: $kind, productName: $productName, quantity: $quantity, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FridgeStockMovementDtoCopyWith<$Res>  {
  factory $FridgeStockMovementDtoCopyWith(FridgeStockMovementDto value, $Res Function(FridgeStockMovementDto) _then) = _$FridgeStockMovementDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'quantity') double quantity,@JsonKey(name: 'note') String? note,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$FridgeStockMovementDtoCopyWithImpl<$Res>
    implements $FridgeStockMovementDtoCopyWith<$Res> {
  _$FridgeStockMovementDtoCopyWithImpl(this._self, this._then);

  final FridgeStockMovementDto _self;
  final $Res Function(FridgeStockMovementDto) _then;

/// Create a copy of FridgeStockMovementDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? productName = freezed,Object? quantity = null,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(FridgeStockMovementDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FridgeStockMovementDto].
extension FridgeStockMovementDtoPatterns on FridgeStockMovementDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeStockMovementDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeStockMovementDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeStockMovementDto value)  $default,){
final _that = this;
switch (_that) {
case _FridgeStockMovementDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeStockMovementDto value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeStockMovementDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'quantity')  double quantity, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeStockMovementDto() when $default != null:
return $default(_that.id,_that.kind,_that.productName,_that.quantity,_that.note,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'quantity')  double quantity, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FridgeStockMovementDto():
return $default(_that.id,_that.kind,_that.productName,_that.quantity,_that.note,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'product_name')  String? productName, @JsonKey(name: 'quantity')  double quantity, @JsonKey(name: 'note')  String? note, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FridgeStockMovementDto() when $default != null:
return $default(_that.id,_that.kind,_that.productName,_that.quantity,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FridgeStockMovementDto implements FridgeStockMovementDto {
  const _FridgeStockMovementDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'kind') this.kind = 'inventory', @JsonKey(name: 'product_name') this.productName, @JsonKey(name: 'quantity') this.quantity = 0, @JsonKey(name: 'note') this.note, @JsonKey(name: 'created_at') this.createdAt});
  factory _FridgeStockMovementDto.fromJson(Map<String, dynamic> json) => _$FridgeStockMovementDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'kind') final  String kind;
@override@JsonKey(name: 'product_name') final  String? productName;
@override@JsonKey(name: 'quantity') final  double quantity;
@override@JsonKey(name: 'note') final  String? note;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of FridgeStockMovementDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeStockMovementDtoCopyWith<_FridgeStockMovementDto> get copyWith => __$FridgeStockMovementDtoCopyWithImpl<_FridgeStockMovementDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FridgeStockMovementDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeStockMovementDto&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,productName,quantity,note,createdAt);

@override
String toString() {
  return 'FridgeStockMovementDto(id: $id, kind: $kind, productName: $productName, quantity: $quantity, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FridgeStockMovementDtoCopyWith<$Res> implements $FridgeStockMovementDtoCopyWith<$Res> {
  factory _$FridgeStockMovementDtoCopyWith(_FridgeStockMovementDto value, $Res Function(_FridgeStockMovementDto) _then) = __$FridgeStockMovementDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'product_name') String? productName,@JsonKey(name: 'quantity') double quantity,@JsonKey(name: 'note') String? note,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$FridgeStockMovementDtoCopyWithImpl<$Res>
    implements _$FridgeStockMovementDtoCopyWith<$Res> {
  __$FridgeStockMovementDtoCopyWithImpl(this._self, this._then);

  final _FridgeStockMovementDto _self;
  final $Res Function(_FridgeStockMovementDto) _then;

/// Create a copy of FridgeStockMovementDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? productName = freezed,Object? quantity = null,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(_FridgeStockMovementDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
