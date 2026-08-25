// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewListResponse implements DiagnosticableTreeMixin {

 List<ReviewResponse> get reviews;
/// Create a copy of ReviewListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewListResponseCopyWith<ReviewListResponse> get copyWith => _$ReviewListResponseCopyWithImpl<ReviewListResponse>(this as ReviewListResponse, _$identity);

  /// Serializes this ReviewListResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewListResponse'))
    ..add(DiagnosticsProperty('reviews', reviews));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewListResponse&&const DeepCollectionEquality().equals(other.reviews, reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reviews));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewListResponse(reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $ReviewListResponseCopyWith<$Res>  {
  factory $ReviewListResponseCopyWith(ReviewListResponse value, $Res Function(ReviewListResponse) _then) = _$ReviewListResponseCopyWithImpl;
@useResult
$Res call({
 List<ReviewResponse> reviews
});




}
/// @nodoc
class _$ReviewListResponseCopyWithImpl<$Res>
    implements $ReviewListResponseCopyWith<$Res> {
  _$ReviewListResponseCopyWithImpl(this._self, this._then);

  final ReviewListResponse _self;
  final $Res Function(ReviewListResponse) _then;

/// Create a copy of ReviewListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviews = null,}) {
  return _then(ReviewListResponse(
reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewListResponse].
extension ReviewListResponsePatterns on ReviewListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewResponse> reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewListResponse() when $default != null:
return $default(_that.reviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewResponse> reviews)  $default,) {final _that = this;
switch (_that) {
case _ReviewListResponse():
return $default(_that.reviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewResponse> reviews)?  $default,) {final _that = this;
switch (_that) {
case _ReviewListResponse() when $default != null:
return $default(_that.reviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewListResponse with DiagnosticableTreeMixin implements ReviewListResponse {
  const _ReviewListResponse({required  List<ReviewResponse> reviews}): _reviews = reviews;
  factory _ReviewListResponse.fromJson(Map<String, dynamic> json) => _$ReviewListResponseFromJson(json);

 final  List<ReviewResponse> _reviews;
@override List<ReviewResponse> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of ReviewListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewListResponseCopyWith<_ReviewListResponse> get copyWith => __$ReviewListResponseCopyWithImpl<_ReviewListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewListResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewListResponse'))
    ..add(DiagnosticsProperty('reviews', reviews));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewListResponse&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reviews));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewListResponse(reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$ReviewListResponseCopyWith<$Res> implements $ReviewListResponseCopyWith<$Res> {
  factory _$ReviewListResponseCopyWith(_ReviewListResponse value, $Res Function(_ReviewListResponse) _then) = __$ReviewListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewResponse> reviews
});




}
/// @nodoc
class __$ReviewListResponseCopyWithImpl<$Res>
    implements _$ReviewListResponseCopyWith<$Res> {
  __$ReviewListResponseCopyWithImpl(this._self, this._then);

  final _ReviewListResponse _self;
  final $Res Function(_ReviewListResponse) _then;

/// Create a copy of ReviewListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviews = null,}) {
  return _then(_ReviewListResponse(
reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewResponse>,
  ));
}


}


/// @nodoc
mixin _$ReviewResponse implements DiagnosticableTreeMixin {

 String get id; int? get rate; DateTime? get date; String? get address; String? get divisionId; String? get divisionName;@JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown) ReviewType get type;
/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewResponseCopyWith<ReviewResponse> get copyWith => _$ReviewResponseCopyWithImpl<ReviewResponse>(this as ReviewResponse, _$identity);

  /// Serializes this ReviewResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rate,date,address,divisionId,divisionName,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewResponse(id: $id, rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, type: $type)';
}


}

/// @nodoc
abstract mixin class $ReviewResponseCopyWith<$Res>  {
  factory $ReviewResponseCopyWith(ReviewResponse value, $Res Function(ReviewResponse) _then) = _$ReviewResponseCopyWithImpl;
@useResult
$Res call({
 String id, int? rate, DateTime? date, String? address, String? divisionId, String? divisionName,@JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown) ReviewType type
});




}
/// @nodoc
class _$ReviewResponseCopyWithImpl<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  _$ReviewResponseCopyWithImpl(this._self, this._then);

  final ReviewResponse _self;
  final $Res Function(ReviewResponse) _then;

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? type = null,}) {
  return _then(ReviewResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReviewType,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewResponse].
extension ReviewResponsePatterns on ReviewResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReviewResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName, @JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown)  ReviewType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
return $default(_that.id,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName, @JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown)  ReviewType type)  $default,) {final _that = this;
switch (_that) {
case _ReviewResponse():
return $default(_that.id,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName, @JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown)  ReviewType type)?  $default,) {final _that = this;
switch (_that) {
case _ReviewResponse() when $default != null:
return $default(_that.id,_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _ReviewResponse extends ReviewResponse with DiagnosticableTreeMixin {
  const _ReviewResponse({required this.id, this.rate, this.date, this.address, this.divisionId, this.divisionName, @JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown) required this.type}): super._();
  factory _ReviewResponse.fromJson(Map<String, dynamic> json) => _$ReviewResponseFromJson(json);

@override final  String id;
@override final  int? rate;
@override final  DateTime? date;
@override final  String? address;
@override final  String? divisionId;
@override final  String? divisionName;
@override@JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown) final  ReviewType type;

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewResponseCopyWith<_ReviewResponse> get copyWith => __$ReviewResponseCopyWithImpl<_ReviewResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rate,date,address,divisionId,divisionName,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewResponse(id: $id, rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ReviewResponseCopyWith<$Res> implements $ReviewResponseCopyWith<$Res> {
  factory _$ReviewResponseCopyWith(_ReviewResponse value, $Res Function(_ReviewResponse) _then) = __$ReviewResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, int? rate, DateTime? date, String? address, String? divisionId, String? divisionName,@JsonKey(unknownEnumValue: ReviewType.unknown, defaultValue: ReviewType.unknown) ReviewType type
});




}
/// @nodoc
class __$ReviewResponseCopyWithImpl<$Res>
    implements _$ReviewResponseCopyWith<$Res> {
  __$ReviewResponseCopyWithImpl(this._self, this._then);

  final _ReviewResponse _self;
  final $Res Function(_ReviewResponse) _then;

/// Create a copy of ReviewResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? type = null,}) {
  return _then(_ReviewResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReviewType,
  ));
}


}

ReviewDetailsResponse _$ReviewDetailsResponseFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'Store ID':
          return StoreReviewDetailsResponse.fromJson(
            json
          );
                case 'Purchase ID':
          return PurhcaseReviewDetailsResponse.fromJson(
            json
          );
        
          default:
            return DefaultReviewDetailsResponse.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$ReviewDetailsResponse implements DiagnosticableTreeMixin {

 int? get rate; DateTime? get date; String? get address; String? get divisionId; String? get divisionName; String? get text; String? get phone; List<String>? get photos;
/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDetailsResponseCopyWith<ReviewDetailsResponse> get copyWith => _$ReviewDetailsResponseCopyWithImpl<ReviewDetailsResponse>(this as ReviewDetailsResponse, _$identity);

  /// Serializes this ReviewDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDetailsResponse'))
    ..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('photos', photos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDetailsResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.photos, photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(photos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDetailsResponse(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $ReviewDetailsResponseCopyWith<$Res>  {
  factory $ReviewDetailsResponseCopyWith(ReviewDetailsResponse value, $Res Function(ReviewDetailsResponse) _then) = _$ReviewDetailsResponseCopyWithImpl;
@useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$ReviewDetailsResponseCopyWithImpl<$Res>
    implements $ReviewDetailsResponseCopyWith<$Res> {
  _$ReviewDetailsResponseCopyWithImpl(this._self, this._then);

  final ReviewDetailsResponse _self;
  final $Res Function(ReviewDetailsResponse) _then;

/// Create a copy of ReviewDetailsResponse
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


/// Adds pattern-matching-related methods to [ReviewDetailsResponse].
extension ReviewDetailsResponsePatterns on ReviewDetailsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( DefaultReviewDetailsResponse value)?  $default,{TResult Function( StoreReviewDetailsResponse value)?  store,TResult Function( PurhcaseReviewDetailsResponse value)?  purchase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse() when $default != null:
return $default(_that);case StoreReviewDetailsResponse() when store != null:
return store(_that);case PurhcaseReviewDetailsResponse() when purchase != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( DefaultReviewDetailsResponse value)  $default,{required TResult Function( StoreReviewDetailsResponse value)  store,required TResult Function( PurhcaseReviewDetailsResponse value)  purchase,}){
final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse():
return $default(_that);case StoreReviewDetailsResponse():
return store(_that);case PurhcaseReviewDetailsResponse():
return purchase(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( DefaultReviewDetailsResponse value)?  $default,{TResult? Function( StoreReviewDetailsResponse value)?  store,TResult? Function( PurhcaseReviewDetailsResponse value)?  purchase,}){
final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse() when $default != null:
return $default(_that);case StoreReviewDetailsResponse() when store != null:
return store(_that);case PurhcaseReviewDetailsResponse() when purchase != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  $default,{TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  store,TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheckResponse? compositionOfTheCheck)?  purchase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse() when $default != null:
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetailsResponse() when store != null:
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetailsResponse() when purchase != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)  $default,{required TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)  store,required TResult Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheckResponse? compositionOfTheCheck)  purchase,}) {final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse():
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetailsResponse():
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetailsResponse():
return purchase(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos,_that.compositionOfTheCheck);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  $default,{TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos)?  store,TResult? Function( int? rate,  DateTime? date,  String? address,  String? divisionId,  String? divisionName,  String? text,  String? phone,  List<String>? photos,  CompositionOfTheCheckResponse? compositionOfTheCheck)?  purchase,}) {final _that = this;
switch (_that) {
case DefaultReviewDetailsResponse() when $default != null:
return $default(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case StoreReviewDetailsResponse() when store != null:
return store(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos);case PurhcaseReviewDetailsResponse() when purchase != null:
return purchase(_that.rate,_that.date,_that.address,_that.divisionId,_that.divisionName,_that.text,_that.phone,_that.photos,_that.compositionOfTheCheck);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class DefaultReviewDetailsResponse with DiagnosticableTreeMixin implements ReviewDetailsResponse {
  const DefaultReviewDetailsResponse({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos,  String? $type}): _photos = photos,$type = $type ?? 'default';
  factory DefaultReviewDetailsResponse.fromJson(Map<String, dynamic> json) => _$DefaultReviewDetailsResponseFromJson(json);

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


@JsonKey(name: 'type')
final String $type;


/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultReviewDetailsResponseCopyWith<DefaultReviewDetailsResponse> get copyWith => _$DefaultReviewDetailsResponseCopyWithImpl<DefaultReviewDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DefaultReviewDetailsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDetailsResponse'))
    ..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('photos', photos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultReviewDetailsResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDetailsResponse(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $DefaultReviewDetailsResponseCopyWith<$Res> implements $ReviewDetailsResponseCopyWith<$Res> {
  factory $DefaultReviewDetailsResponseCopyWith(DefaultReviewDetailsResponse value, $Res Function(DefaultReviewDetailsResponse) _then) = _$DefaultReviewDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$DefaultReviewDetailsResponseCopyWithImpl<$Res>
    implements $DefaultReviewDetailsResponseCopyWith<$Res> {
  _$DefaultReviewDetailsResponseCopyWithImpl(this._self, this._then);

  final DefaultReviewDetailsResponse _self;
  final $Res Function(DefaultReviewDetailsResponse) _then;

/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,}) {
  return _then(DefaultReviewDetailsResponse(
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

@JsonSerializable(fieldRename: FieldRename.none)
class StoreReviewDetailsResponse with DiagnosticableTreeMixin implements ReviewDetailsResponse {
  const StoreReviewDetailsResponse({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos,  String? $type}): _photos = photos,$type = $type ?? 'Store ID';
  factory StoreReviewDetailsResponse.fromJson(Map<String, dynamic> json) => _$StoreReviewDetailsResponseFromJson(json);

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


@JsonKey(name: 'type')
final String $type;


/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreReviewDetailsResponseCopyWith<StoreReviewDetailsResponse> get copyWith => _$StoreReviewDetailsResponseCopyWithImpl<StoreReviewDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreReviewDetailsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDetailsResponse.store'))
    ..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('photos', photos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreReviewDetailsResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDetailsResponse.store(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $StoreReviewDetailsResponseCopyWith<$Res> implements $ReviewDetailsResponseCopyWith<$Res> {
  factory $StoreReviewDetailsResponseCopyWith(StoreReviewDetailsResponse value, $Res Function(StoreReviewDetailsResponse) _then) = _$StoreReviewDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos
});




}
/// @nodoc
class _$StoreReviewDetailsResponseCopyWithImpl<$Res>
    implements $StoreReviewDetailsResponseCopyWith<$Res> {
  _$StoreReviewDetailsResponseCopyWithImpl(this._self, this._then);

  final StoreReviewDetailsResponse _self;
  final $Res Function(StoreReviewDetailsResponse) _then;

/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,}) {
  return _then(StoreReviewDetailsResponse(
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

@JsonSerializable(fieldRename: FieldRename.none)
class PurhcaseReviewDetailsResponse with DiagnosticableTreeMixin implements ReviewDetailsResponse {
  const PurhcaseReviewDetailsResponse({this.rate, this.date, this.address, this.divisionId, this.divisionName, this.text, this.phone,  List<String>? photos, this.compositionOfTheCheck,  String? $type}): _photos = photos,$type = $type ?? 'Purchase ID';
  factory PurhcaseReviewDetailsResponse.fromJson(Map<String, dynamic> json) => _$PurhcaseReviewDetailsResponseFromJson(json);

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

 final  CompositionOfTheCheckResponse? compositionOfTheCheck;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurhcaseReviewDetailsResponseCopyWith<PurhcaseReviewDetailsResponse> get copyWith => _$PurhcaseReviewDetailsResponseCopyWithImpl<PurhcaseReviewDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurhcaseReviewDetailsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReviewDetailsResponse.purchase'))
    ..add(DiagnosticsProperty('rate', rate))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('text', text))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('photos', photos))..add(DiagnosticsProperty('compositionOfTheCheck', compositionOfTheCheck));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurhcaseReviewDetailsResponse&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.date, date) || other.date == date)&&(identical(other.address, address) || other.address == address)&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.text, text) || other.text == text)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.compositionOfTheCheck, compositionOfTheCheck) || other.compositionOfTheCheck == compositionOfTheCheck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rate,date,address,divisionId,divisionName,text,phone,const DeepCollectionEquality().hash(_photos),compositionOfTheCheck);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReviewDetailsResponse.purchase(rate: $rate, date: $date, address: $address, divisionId: $divisionId, divisionName: $divisionName, text: $text, phone: $phone, photos: $photos, compositionOfTheCheck: $compositionOfTheCheck)';
}


}

/// @nodoc
abstract mixin class $PurhcaseReviewDetailsResponseCopyWith<$Res> implements $ReviewDetailsResponseCopyWith<$Res> {
  factory $PurhcaseReviewDetailsResponseCopyWith(PurhcaseReviewDetailsResponse value, $Res Function(PurhcaseReviewDetailsResponse) _then) = _$PurhcaseReviewDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 int? rate, DateTime? date, String? address, String? divisionId, String? divisionName, String? text, String? phone, List<String>? photos, CompositionOfTheCheckResponse? compositionOfTheCheck
});


$CompositionOfTheCheckResponseCopyWith<$Res>? get compositionOfTheCheck;

}
/// @nodoc
class _$PurhcaseReviewDetailsResponseCopyWithImpl<$Res>
    implements $PurhcaseReviewDetailsResponseCopyWith<$Res> {
  _$PurhcaseReviewDetailsResponseCopyWithImpl(this._self, this._then);

  final PurhcaseReviewDetailsResponse _self;
  final $Res Function(PurhcaseReviewDetailsResponse) _then;

/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = freezed,Object? date = freezed,Object? address = freezed,Object? divisionId = freezed,Object? divisionName = freezed,Object? text = freezed,Object? phone = freezed,Object? photos = freezed,Object? compositionOfTheCheck = freezed,}) {
  return _then(PurhcaseReviewDetailsResponse(
rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,divisionId: freezed == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String?,divisionName: freezed == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,compositionOfTheCheck: freezed == compositionOfTheCheck ? _self.compositionOfTheCheck : compositionOfTheCheck // ignore: cast_nullable_to_non_nullable
as CompositionOfTheCheckResponse?,
  ));
}

/// Create a copy of ReviewDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompositionOfTheCheckResponseCopyWith<$Res>? get compositionOfTheCheck {
    if (_self.compositionOfTheCheck == null) {
    return null;
  }

  return $CompositionOfTheCheckResponseCopyWith<$Res>(_self.compositionOfTheCheck!, (value) {
    return _then(_self.copyWith(compositionOfTheCheck: value));
  });
}
}


/// @nodoc
mixin _$CompositionOfTheCheckResponse implements DiagnosticableTreeMixin {

 DateTime? get dateOfPurchase; List<CheckPositionResponse>? get nomenclature; double get quantity; double get discountAmount; double get salesAmount;
/// Create a copy of CompositionOfTheCheckResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompositionOfTheCheckResponseCopyWith<CompositionOfTheCheckResponse> get copyWith => _$CompositionOfTheCheckResponseCopyWithImpl<CompositionOfTheCheckResponse>(this as CompositionOfTheCheckResponse, _$identity);

  /// Serializes this CompositionOfTheCheckResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CompositionOfTheCheckResponse'))
    ..add(DiagnosticsProperty('dateOfPurchase', dateOfPurchase))..add(DiagnosticsProperty('nomenclature', nomenclature))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('discountAmount', discountAmount))..add(DiagnosticsProperty('salesAmount', salesAmount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompositionOfTheCheckResponse&&(identical(other.dateOfPurchase, dateOfPurchase) || other.dateOfPurchase == dateOfPurchase)&&const DeepCollectionEquality().equals(other.nomenclature, nomenclature)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.salesAmount, salesAmount) || other.salesAmount == salesAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateOfPurchase,const DeepCollectionEquality().hash(nomenclature),quantity,discountAmount,salesAmount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CompositionOfTheCheckResponse(dateOfPurchase: $dateOfPurchase, nomenclature: $nomenclature, quantity: $quantity, discountAmount: $discountAmount, salesAmount: $salesAmount)';
}


}

/// @nodoc
abstract mixin class $CompositionOfTheCheckResponseCopyWith<$Res>  {
  factory $CompositionOfTheCheckResponseCopyWith(CompositionOfTheCheckResponse value, $Res Function(CompositionOfTheCheckResponse) _then) = _$CompositionOfTheCheckResponseCopyWithImpl;
@useResult
$Res call({
 DateTime? dateOfPurchase, List<CheckPositionResponse>? nomenclature, double quantity, double discountAmount, double salesAmount
});




}
/// @nodoc
class _$CompositionOfTheCheckResponseCopyWithImpl<$Res>
    implements $CompositionOfTheCheckResponseCopyWith<$Res> {
  _$CompositionOfTheCheckResponseCopyWithImpl(this._self, this._then);

  final CompositionOfTheCheckResponse _self;
  final $Res Function(CompositionOfTheCheckResponse) _then;

/// Create a copy of CompositionOfTheCheckResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateOfPurchase = freezed,Object? nomenclature = freezed,Object? quantity = null,Object? discountAmount = null,Object? salesAmount = null,}) {
  return _then(CompositionOfTheCheckResponse(
dateOfPurchase: freezed == dateOfPurchase ? _self.dateOfPurchase : dateOfPurchase // ignore: cast_nullable_to_non_nullable
as DateTime?,nomenclature: freezed == nomenclature ? _self.nomenclature : nomenclature // ignore: cast_nullable_to_non_nullable
as List<CheckPositionResponse>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,salesAmount: null == salesAmount ? _self.salesAmount : salesAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CompositionOfTheCheckResponse].
extension CompositionOfTheCheckResponsePatterns on CompositionOfTheCheckResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompositionOfTheCheckResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompositionOfTheCheckResponse value)  $default,){
final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompositionOfTheCheckResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? dateOfPurchase,  List<CheckPositionResponse>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? dateOfPurchase,  List<CheckPositionResponse>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)  $default,) {final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? dateOfPurchase,  List<CheckPositionResponse>? nomenclature,  double quantity,  double discountAmount,  double salesAmount)?  $default,) {final _that = this;
switch (_that) {
case _CompositionOfTheCheckResponse() when $default != null:
return $default(_that.dateOfPurchase,_that.nomenclature,_that.quantity,_that.discountAmount,_that.salesAmount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CompositionOfTheCheckResponse with DiagnosticableTreeMixin implements CompositionOfTheCheckResponse {
  const _CompositionOfTheCheckResponse({this.dateOfPurchase,  List<CheckPositionResponse>? nomenclature, required this.quantity, required this.discountAmount, required this.salesAmount}): _nomenclature = nomenclature;
  factory _CompositionOfTheCheckResponse.fromJson(Map<String, dynamic> json) => _$CompositionOfTheCheckResponseFromJson(json);

@override final  DateTime? dateOfPurchase;
 final  List<CheckPositionResponse>? _nomenclature;
@override List<CheckPositionResponse>? get nomenclature {
  final value = _nomenclature;
  if (value == null) return null;
  if (_nomenclature is EqualUnmodifiableListView) return _nomenclature;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double quantity;
@override final  double discountAmount;
@override final  double salesAmount;

/// Create a copy of CompositionOfTheCheckResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompositionOfTheCheckResponseCopyWith<_CompositionOfTheCheckResponse> get copyWith => __$CompositionOfTheCheckResponseCopyWithImpl<_CompositionOfTheCheckResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompositionOfTheCheckResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CompositionOfTheCheckResponse'))
    ..add(DiagnosticsProperty('dateOfPurchase', dateOfPurchase))..add(DiagnosticsProperty('nomenclature', nomenclature))..add(DiagnosticsProperty('quantity', quantity))..add(DiagnosticsProperty('discountAmount', discountAmount))..add(DiagnosticsProperty('salesAmount', salesAmount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompositionOfTheCheckResponse&&(identical(other.dateOfPurchase, dateOfPurchase) || other.dateOfPurchase == dateOfPurchase)&&const DeepCollectionEquality().equals(other._nomenclature, _nomenclature)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.salesAmount, salesAmount) || other.salesAmount == salesAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateOfPurchase,const DeepCollectionEquality().hash(_nomenclature),quantity,discountAmount,salesAmount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CompositionOfTheCheckResponse(dateOfPurchase: $dateOfPurchase, nomenclature: $nomenclature, quantity: $quantity, discountAmount: $discountAmount, salesAmount: $salesAmount)';
}


}

/// @nodoc
abstract mixin class _$CompositionOfTheCheckResponseCopyWith<$Res> implements $CompositionOfTheCheckResponseCopyWith<$Res> {
  factory _$CompositionOfTheCheckResponseCopyWith(_CompositionOfTheCheckResponse value, $Res Function(_CompositionOfTheCheckResponse) _then) = __$CompositionOfTheCheckResponseCopyWithImpl;
@override @useResult
$Res call({
 DateTime? dateOfPurchase, List<CheckPositionResponse>? nomenclature, double quantity, double discountAmount, double salesAmount
});




}
/// @nodoc
class __$CompositionOfTheCheckResponseCopyWithImpl<$Res>
    implements _$CompositionOfTheCheckResponseCopyWith<$Res> {
  __$CompositionOfTheCheckResponseCopyWithImpl(this._self, this._then);

  final _CompositionOfTheCheckResponse _self;
  final $Res Function(_CompositionOfTheCheckResponse) _then;

/// Create a copy of CompositionOfTheCheckResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateOfPurchase = freezed,Object? nomenclature = freezed,Object? quantity = null,Object? discountAmount = null,Object? salesAmount = null,}) {
  return _then(_CompositionOfTheCheckResponse(
dateOfPurchase: freezed == dateOfPurchase ? _self.dateOfPurchase : dateOfPurchase // ignore: cast_nullable_to_non_nullable
as DateTime?,nomenclature: freezed == nomenclature ? _self._nomenclature : nomenclature // ignore: cast_nullable_to_non_nullable
as List<CheckPositionResponse>?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,salesAmount: null == salesAmount ? _self.salesAmount : salesAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CheckPositionResponse implements DiagnosticableTreeMixin {

 String? get name; double? get quantity;
/// Create a copy of CheckPositionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPositionResponseCopyWith<CheckPositionResponse> get copyWith => _$CheckPositionResponseCopyWithImpl<CheckPositionResponse>(this as CheckPositionResponse, _$identity);

  /// Serializes this CheckPositionResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckPositionResponse'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPositionResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,quantity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckPositionResponse(name: $name, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CheckPositionResponseCopyWith<$Res>  {
  factory $CheckPositionResponseCopyWith(CheckPositionResponse value, $Res Function(CheckPositionResponse) _then) = _$CheckPositionResponseCopyWithImpl;
@useResult
$Res call({
 String? name, double? quantity
});




}
/// @nodoc
class _$CheckPositionResponseCopyWithImpl<$Res>
    implements $CheckPositionResponseCopyWith<$Res> {
  _$CheckPositionResponseCopyWithImpl(this._self, this._then);

  final CheckPositionResponse _self;
  final $Res Function(CheckPositionResponse) _then;

/// Create a copy of CheckPositionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? quantity = freezed,}) {
  return _then(CheckPositionResponse(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckPositionResponse].
extension CheckPositionResponsePatterns on CheckPositionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckPositionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckPositionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckPositionResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckPositionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckPositionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckPositionResponse() when $default != null:
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
case _CheckPositionResponse() when $default != null:
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
case _CheckPositionResponse():
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
case _CheckPositionResponse() when $default != null:
return $default(_that.name,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CheckPositionResponse with DiagnosticableTreeMixin implements CheckPositionResponse {
  const _CheckPositionResponse({this.name, this.quantity});
  factory _CheckPositionResponse.fromJson(Map<String, dynamic> json) => _$CheckPositionResponseFromJson(json);

@override final  String? name;
@override final  double? quantity;

/// Create a copy of CheckPositionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckPositionResponseCopyWith<_CheckPositionResponse> get copyWith => __$CheckPositionResponseCopyWithImpl<_CheckPositionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckPositionResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckPositionResponse'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('quantity', quantity));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPositionResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,quantity);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckPositionResponse(name: $name, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CheckPositionResponseCopyWith<$Res> implements $CheckPositionResponseCopyWith<$Res> {
  factory _$CheckPositionResponseCopyWith(_CheckPositionResponse value, $Res Function(_CheckPositionResponse) _then) = __$CheckPositionResponseCopyWithImpl;
@override @useResult
$Res call({
 String? name, double? quantity
});




}
/// @nodoc
class __$CheckPositionResponseCopyWithImpl<$Res>
    implements _$CheckPositionResponseCopyWith<$Res> {
  __$CheckPositionResponseCopyWithImpl(this._self, this._then);

  final _CheckPositionResponse _self;
  final $Res Function(_CheckPositionResponse) _then;

/// Create a copy of CheckPositionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? quantity = freezed,}) {
  return _then(_CheckPositionResponse(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
