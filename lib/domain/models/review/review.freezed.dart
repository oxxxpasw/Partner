// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewDetails {

 int? get rate; DateTime? get date; String? get address; String? get divisionId; String? get divisionName; String? get text; String? get phone; List<String>? get photos;
/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDetailsCopyWith<ReviewDetails> get copyWith => _$ReviewDetailsCopyWithImpl<ReviewDetails>(this as ReviewDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDetails&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.photos, photos));
}


@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'ReviewDetails(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $ReviewDetailsCopyWith<$Res>  {
  factory $ReviewDetailsCopyWith(ReviewDetails value, $Res Function(ReviewDetails) _then) = _$ReviewDetailsCopyWithImpl;
@useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$ReviewDetailsCopyWithImpl<$Res>
    implements $ReviewDetailsCopyWith<$Res> {
  _$ReviewDetailsCopyWithImpl(this._self, this._then);

  final ReviewDetails _self;
  final $Res Function(ReviewDetails) _then;

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,}) {
  return _then(_self.copyWith(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewDetails].
extension ReviewDetailsPatterns on ReviewDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( DefaultReviewDetails value)?  $default,{TResult Function( StoreReviewDetails value)?  store,TResult Function( PurhcaseReviewDetails value)?  purchase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DefaultReviewDetails() when $default != null:
return $default(_that);case StoreReviewDetails() when store != null:
return store(_that);case PurhcaseReviewDetails() when purchase != null:
return purchase(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( DefaultReviewDetails value)  $default,{required TResult Function( StoreReviewDetails value)  store,required TResult Function( PurhcaseReviewDetails value)  purchase,}){
final _that = this;
switch (_that) {
case DefaultReviewDetails():
return $default(_that);case StoreReviewDetails():
return store(_that);case PurhcaseReviewDetails():
return purchase(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( DefaultReviewDetails value)?  $default,{TResult? Function( StoreReviewDetails value)?  store,TResult? Function( PurhcaseReviewDetails value)?  purchase,}){
final _that = this;
switch (_that) {
case DefaultReviewDetails() when $default != null:
return $default(_that);case StoreReviewDetails() when store != null:
return store(_that);case PurhcaseReviewDetails() when purchase != null:
return purchase(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  $default,{TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  store,TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheck? compositionOfTheCheck)?  purchase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DefaultReviewDetails() when $default != null:
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetails() when store != null:
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetails() when purchase != null:
return purchase(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos,_that.compositionOfTheCheck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)  $default,{required TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)  store,required TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheck? compositionOfTheCheck)  purchase,}) {final _that = this;
switch (_that) {
case DefaultReviewDetails():
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetails():
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetails():
return purchase(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos,_that.compositionOfTheCheck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  $default,{TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  store,TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheck? compositionOfTheCheck)?  purchase,}) {final _that = this;
switch (_that) {
case DefaultReviewDetails() when $default != null:
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetails() when store != null:
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetails() when purchase != null:
return purchase(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos,_that.compositionOfTheCheck);case _:
  return null;

}
}

}

/// @nodoc


class DefaultReviewDetails implements ReviewDetails {
  const DefaultReviewDetails({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos}): _photos = photos;
  

@override final  int? rate;
@override final  DateTime? date;
@override final  String? address;
@override final  String? divisionId;
@override final  String? divisionName;
@override final  String? text;
@override final  String? phone;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultReviewDetailsCopyWith<DefaultReviewDetails> get copyWith => _$DefaultReviewDetailsCopyWithImpl<DefaultReviewDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultReviewDetails&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos));
}


@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'ReviewDetails(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $DefaultReviewDetailsCopyWith<$Res> implements $ReviewDetailsCopyWith<$Res> {
  factory $DefaultReviewDetailsCopyWith(DefaultReviewDetails value, $Res Function(DefaultReviewDetails) _then) = _$DefaultReviewDetailsCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$DefaultReviewDetailsCopyWithImpl<$Res>
    implements $DefaultReviewDetailsCopyWith<$Res> {
  _$DefaultReviewDetailsCopyWithImpl(this._self, this._then);

  final DefaultReviewDetails _self;
  final $Res Function(DefaultReviewDetails) _then;

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,}) {
  return _then(DefaultReviewDetails(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc


class StoreReviewDetails implements ReviewDetails {
  const StoreReviewDetails({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos}): _photos = photos;
  

@override final  int? rate;
@override final  DateTime? date;
@override final  String? address;
@override final  String? divisionId;
@override final  String? divisionName;
@override final  String? text;
@override final  String? phone;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreReviewDetailsCopyWith<StoreReviewDetails> get copyWith => _$StoreReviewDetailsCopyWithImpl<StoreReviewDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreReviewDetails&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos));
}


@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'ReviewDetails.store(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $StoreReviewDetailsCopyWith<$Res> implements $ReviewDetailsCopyWith<$Res> {
  factory $StoreReviewDetailsCopyWith(StoreReviewDetails value, $Res Function(StoreReviewDetails) _then) = _$StoreReviewDetailsCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$StoreReviewDetailsCopyWithImpl<$Res>
    implements $StoreReviewDetailsCopyWith<$Res> {
  _$StoreReviewDetailsCopyWithImpl(this._self, this._then);

  final StoreReviewDetails _self;
  final $Res Function(StoreReviewDetails) _then;

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,}) {
  return _then(StoreReviewDetails(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc


class PurhcaseReviewDetails implements ReviewDetails {
  const PurhcaseReviewDetails({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos, this.compositionOfTheCheck}): _photos = photos;
  

@override final  int? rate;
@override final  DateTime? date;
@override final  String? address;
@override final  String? divisionId;
@override final  String? divisionName;
@override final  String? text;
@override final  String? phone;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  CompositionOfTheCheck? compositionOfTheCheck;

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurhcaseReviewDetailsCopyWith<PurhcaseReviewDetails> get copyWith => _$PurhcaseReviewDetailsCopyWithImpl<PurhcaseReviewDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurhcaseReviewDetails&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.compositionOfTheCheck, compositionOfTheCheck) || other.compositionOfTheCheck == compositionOfTheCheck));
}


@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos),compositionOfTheCheck);

@override
String toString() {
  return 'ReviewDetails.purchase(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos, compositionOfTheCheck: $compositionOfTheCheck)';
}


}

/// @nodoc
abstract mixin class $PurhcaseReviewDetailsCopyWith<$Res> implements $ReviewDetailsCopyWith<$Res> {
  factory $PurhcaseReviewDetailsCopyWith(PurhcaseReviewDetails value, $Res Function(PurhcaseReviewDetails) _then) = _$PurhcaseReviewDetailsCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos, CompositionOfTheCheck? compositionOfTheCheck
});


$CompositionOfTheCheckCopyWith<$Res>? get compositionOfTheCheck;

}
/// @nodoc
class _$PurhcaseReviewDetailsCopyWithImpl<$Res>
    implements $PurhcaseReviewDetailsCopyWith<$Res> {
  _$PurhcaseReviewDetailsCopyWithImpl(this._self, this._then);

  final PurhcaseReviewDetails _self;
  final $Res Function(PurhcaseReviewDetails) _then;

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,Object? compositionOfTheCheck = freezed,}) {
  return _then(PurhcaseReviewDetails(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,compositionOfTheCheck: freezed == compositionOfTheCheck ? _self.compositionOfTheCheck : compositionOfTheCheck // ignore: cast_nullable_to_non_nullable
as CompositionOfTheCheck?,
  ));
}

/// Create a copy of ReviewDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompositionOfTheCheckCopyWith<$Res>? get compositionOfTheCheck {
    if (_self.compositionOfTheCheck == null) {
    return null;
  }

  return $CompositionOfTheCheckCopyWith<$Res>(_self.compositionOfTheCheck!, (value) {
    return _then(_self.copyWith(compositionOfTheCheck: value));
  });
}
}

/// @nodoc
mixin _$CompositionOfTheCheck {

 DateTime? get dateOfPurchase; List<CheckPosition>? get nomenclature; double get quantity; double get discountAmount; double get salesAmount;
/// Create a copy of CompositionOfTheCheck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompositionOfTheCheckCopyWith<CompositionOfTheCheck> get copyWith => _$CompositionOfTheCheckCopyWithImpl<CompositionOfTheCheck>(this as CompositionOfTheCheck, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompositionOfTheCheck&&(identical(other.dateOfPurchase, dateOfPurchase) || other.dateOfPurchase == dateOfPurchase)&&const DeepCollectionEquality().equals(other.nomenclature, nomenclature)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.salesAmount, salesAmount) || other.salesAmount == salesAmount));
}


@override
int get hashCode => Object.hash(runtimeType,dateOfPurchase,const DeepCollectionEquality().hash(nomenclature),quantity,discountAmount,salesAmount);

@override
String toString() {
  return 'CompositionOfTheCheck(dateOfPurchase: $dateOfPurchase, nomenclature: $nomenclature, quantity: $quantity, discountAmount: $discountAmount, salesAmount: $salesAmount)';
}


}

/// @nodoc
abstract mixin class $CompositionOfTheCheckCopyWith<$Res>  {
  factory $CompositionOfTheCheckCopyWith(CompositionOfTheCheck value, $Res Function(CompositionOfTheCheck) _then) = _$CompositionOfTheCheckCopyWithImpl;
@useResult
$Res call({
 DateTime? dateOfPurchase, List<CheckPosition>? nomenclature, double quantity, double discountAmount, double salesAmount
});




}
/// @nodoc
class _$CompositionOfTheCheckCopyWithImpl<$Res>
    implements $CompositionOfTheCheckCopyWith<$Res> {
  _$CompositionOfTheCheckCopyWithImpl(this._self, this._then);

  final CompositionOfTheCheck _self;
  final $Res Function(CompositionOfTheCheck) _then;

/// Create a copy of CompositionOfTheCheck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateOfPurchase = freezed,Object? nomenclature = freezed,Object? quantity = null,Object? discountAmount = null,Object? salesAmount = null,}) {
  return _then(CompositionOfTheCheck(
dateOfPurchase: freezed == dateOfPurchase ? _self.dateOfPurchase : dateOfPurchase // ignore: cast_nullable_to_non_nullable
as DateTime?,nomenclature: freezed == nomenclature ? _self.nomenclature : nomenclature // ignore: cast_nullable_to_non_nullable
as List<CheckPosition>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,salesAmount: null == salesAmount ? _self.salesAmount : salesAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CompositionOfTheCheck].
extension CompositionOfTheCheckPatterns on CompositionOfTheCheck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompositionOfTheCheck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompositionOfTheCheck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompositionOfTheCheck value)  $default,){
final _that = this;
switch (_that) {
case _CompositionOfTheCheck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompositionOfTheCheck value)?  $default,){
final _that = this;
switch (_that) {
case _CompositionOfTheCheck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? dateOfPurchase,  List<CheckPosition>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompositionOfTheCheck() when $default != null:
return $default(_that.dateOfPurchase,_that.nomenclature,_that.quantity,_that.discountAmount,_that.salesAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? dateOfPurchase,  List<CheckPosition>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)  $default,) {final _that = this;
switch (_that) {
case _CompositionOfTheCheck():
return $default(_that.dateOfPurchase,_that.nomenclature,_that.quantity,_that.discountAmount,_that.salesAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? dateOfPurchase,  List<CheckPosition>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)?  $default,) {final _that = this;
switch (_that) {
case _CompositionOfTheCheck() when $default != null:
return $default(_that.dateOfPurchase,_that.nomenclature,_that.quantity,_that.discountAmount,_that.salesAmount);case _:
  return null;

}
}

}

/// @nodoc


class _CompositionOfTheCheck implements CompositionOfTheCheck {
  const _CompositionOfTheCheck({this.dateOfPurchase,  List<CheckPosition>? nomenclature, required this.quantity, required this.discountAmount, required this.salesAmount}): _nomenclature = nomenclature;
  

@override final  DateTime? dateOfPurchase;
 final  List<CheckPosition>? _nomenclature;
@override List<CheckPosition>? get nomenclature {
  final value = _nomenclature;
  if (value == null) return null;
  if (_nomenclature is EqualUnmodifiableListView) return _nomenclature;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double quantity;
@override final  double discountAmount;
@override final  double salesAmount;

/// Create a copy of CompositionOfTheCheck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompositionOfTheCheckCopyWith<_CompositionOfTheCheck> get copyWith => __$CompositionOfTheCheckCopyWithImpl<_CompositionOfTheCheck>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompositionOfTheCheck&&(identical(other.dateOfPurchase, dateOfPurchase) || other.dateOfPurchase == dateOfPurchase)&&const DeepCollectionEquality().equals(other._nomenclature, _nomenclature)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.salesAmount, salesAmount) || other.salesAmount == salesAmount));
}


@override
int get hashCode => Object.hash(runtimeType,dateOfPurchase,const DeepCollectionEquality().hash(_nomenclature),quantity,discountAmount,salesAmount);

@override
String toString() {
  return 'CompositionOfTheCheck(dateOfPurchase: $dateOfPurchase, nomenclature: $nomenclature, quantity: $quantity, discountAmount: $discountAmount, salesAmount: $salesAmount)';
}


}

/// @nodoc
abstract mixin class _$CompositionOfTheCheckCopyWith<$Res> implements $CompositionOfTheCheckCopyWith<$Res> {
  factory _$CompositionOfTheCheckCopyWith(_CompositionOfTheCheck value, $Res Function(_CompositionOfTheCheck) _then) = __$CompositionOfTheCheckCopyWithImpl;
@override @useResult
$Res call({
 DateTime? dateOfPurchase, List<CheckPosition>? nomenclature, double quantity, double discountAmount, double salesAmount
});




}
/// @nodoc
class __$CompositionOfTheCheckCopyWithImpl<$Res>
    implements _$CompositionOfTheCheckCopyWith<$Res> {
  __$CompositionOfTheCheckCopyWithImpl(this._self, this._then);

  final _CompositionOfTheCheck _self;
  final $Res Function(_CompositionOfTheCheck) _then;

/// Create a copy of CompositionOfTheCheck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateOfPurchase = freezed,Object? nomenclature = freezed,Object? quantity = null,Object? discountAmount = null,Object? salesAmount = null,}) {
  return _then(_CompositionOfTheCheck(
dateOfPurchase: freezed == dateOfPurchase ? _self.dateOfPurchase : dateOfPurchase // ignore: cast_nullable_to_non_nullable
as DateTime?,nomenclature: freezed == nomenclature ? _self._nomenclature : nomenclature // ignore: cast_nullable_to_non_nullable
as List<CheckPosition>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,salesAmount: null == salesAmount ? _self.salesAmount : salesAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$CheckPosition {

 String? get name; double? get quantity;
/// Create a copy of CheckPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPositionCopyWith<CheckPosition> get copyWith => _$CheckPositionCopyWithImpl<CheckPosition>(this as CheckPosition, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPosition&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity);

@override
String toString() {
  return 'CheckPosition(name: $name, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CheckPositionCopyWith<$Res>  {
  factory $CheckPositionCopyWith(CheckPosition value, $Res Function(CheckPosition) _then) = _$CheckPositionCopyWithImpl;
@useResult
$Res call({
 String? name, double? quantity
});




}
/// @nodoc
class _$CheckPositionCopyWithImpl<$Res>
    implements $CheckPositionCopyWith<$Res> {
  _$CheckPositionCopyWithImpl(this._self, this._then);

  final CheckPosition _self;
  final $Res Function(CheckPosition) _then;

/// Create a copy of CheckPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? quantity = freezed,}) {
  return _then(CheckPosition(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckPosition].
extension CheckPositionPatterns on CheckPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckPosition value)  $default,){
final _that = this;
switch (_that) {
case _CheckPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckPosition value)?  $default,){
final _that = this;
switch (_that) {
case _CheckPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  double? quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckPosition() when $default != null:
return $default(_that.name,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  double? quantity)  $default,) {final _that = this;
switch (_that) {
case _CheckPosition():
return $default(_that.name,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  double? quantity)?  $default,) {final _that = this;
switch (_that) {
case _CheckPosition() when $default != null:
return $default(_that.name,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CheckPosition implements CheckPosition {
  const _CheckPosition({this.name, this.quantity});
  

@override final  String? name;
@override final  double? quantity;

/// Create a copy of CheckPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckPositionCopyWith<_CheckPosition> get copyWith => __$CheckPositionCopyWithImpl<_CheckPosition>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPosition&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity);

@override
String toString() {
  return 'CheckPosition(name: $name, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CheckPositionCopyWith<$Res> implements $CheckPositionCopyWith<$Res> {
  factory _$CheckPositionCopyWith(_CheckPosition value, $Res Function(_CheckPosition) _then) = __$CheckPositionCopyWithImpl;
@override @useResult
$Res call({
 String? name, double? quantity
});




}
/// @nodoc
class __$CheckPositionCopyWithImpl<$Res>
    implements _$CheckPositionCopyWith<$Res> {
  __$CheckPositionCopyWithImpl(this._self, this._then);

  final _CheckPosition _self;
  final $Res Function(_CheckPosition) _then;

/// Create a copy of CheckPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? quantity = freezed,}) {
  return _then(_CheckPosition(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
mixin _$Review {

 String get id; ReviewType get type; int? get rate; DateTime? get date; String? get address; String? get divisionId; String? get divisionName;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,rate,date,address,divisionId,divisionName);

@override
String toString() {
  return 'Review(id: $id, type: $type, rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String id, ReviewType type, int? rate, DateTime? date, String? address, String? divisionId, String? divisionName
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,}) {
  return _then(Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReviewType,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ReviewType type,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.type,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ReviewType type,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.id,_that.type,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ReviewType type,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.type,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName);case _:
  return null;

}
}

}

/// @nodoc


class _Review implements Review {
  const _Review({required this.id, required this.type, this.rate, this.date, this.address, this.divisionId, this.divisionName});
  

@override final  String id;
@override final  ReviewType type;
@override final  int? rate;
@override final  DateTime? date;
@override final  String? address;
@override final  String? divisionId;
@override final  String? divisionName;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,rate,date,address,divisionId,divisionName);

@override
String toString() {
  return 'Review(id: $id, type: $type, rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, ReviewType type, int? rate, DateTime? date, String? address, String? divisionId, String? divisionName
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,}) {
  return _then(_Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReviewType,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
