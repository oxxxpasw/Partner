// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metric_period_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetricPeriodResponse {

@JsonKey(name: 'default') int get defaultItem;@JsonKey(name: 'types') List<MetricPeriodItemResponse> get items;
/// Create a copy of MetricPeriodResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricPeriodResponseCopyWith<MetricPeriodResponse> get copyWith => _$MetricPeriodResponseCopyWithImpl<MetricPeriodResponse>(this as MetricPeriodResponse, _$identity);

  /// Serializes this MetricPeriodResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricPeriodResponse&&(identical(other.defaultItem, defaultItem) || other.defaultItem == defaultItem)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultItem,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MetricPeriodResponse(defaultItem: $defaultItem, items: $items)';
}


}

/// @nodoc
abstract mixin class $MetricPeriodResponseCopyWith<$Res>  {
  factory $MetricPeriodResponseCopyWith(MetricPeriodResponse value, $Res Function(MetricPeriodResponse) _then) = _$MetricPeriodResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'default') int defaultItem,@JsonKey(name: 'types') List<MetricPeriodItemResponse> items
});




}
/// @nodoc
class _$MetricPeriodResponseCopyWithImpl<$Res>
    implements $MetricPeriodResponseCopyWith<$Res> {
  _$MetricPeriodResponseCopyWithImpl(this._self, this._then);

  final MetricPeriodResponse _self;
  final $Res Function(MetricPeriodResponse) _then;

/// Create a copy of MetricPeriodResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultItem = null,Object? items = null,}) {
  return _then(MetricPeriodResponse(
defaultItem: null == defaultItem ? _self.defaultItem : defaultItem // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricPeriodResponse].
extension MetricPeriodResponsePatterns on MetricPeriodResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricPeriodResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricPeriodResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricPeriodResponse value)  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricPeriodResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'default')  int defaultItem, @JsonKey(name: 'types')  List<MetricPeriodItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricPeriodResponse() when $default != null:
return $default(_that.defaultItem,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'default')  int defaultItem, @JsonKey(name: 'types')  List<MetricPeriodItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodResponse():
return $default(_that.defaultItem,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'default')  int defaultItem, @JsonKey(name: 'types')  List<MetricPeriodItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodResponse() when $default != null:
return $default(_that.defaultItem,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetricPeriodResponse implements MetricPeriodResponse {
  const _MetricPeriodResponse({@JsonKey(name: 'default') required this.defaultItem, @JsonKey(name: 'types') required  List<MetricPeriodItemResponse> items}): _items = items;
  factory _MetricPeriodResponse.fromJson(Map<String, dynamic> json) => _$MetricPeriodResponseFromJson(json);

@override@JsonKey(name: 'default') final  int defaultItem;
 final  List<MetricPeriodItemResponse> _items;
@override@JsonKey(name: 'types') List<MetricPeriodItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MetricPeriodResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricPeriodResponseCopyWith<_MetricPeriodResponse> get copyWith => __$MetricPeriodResponseCopyWithImpl<_MetricPeriodResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricPeriodResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricPeriodResponse&&(identical(other.defaultItem, defaultItem) || other.defaultItem == defaultItem)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,defaultItem,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MetricPeriodResponse(defaultItem: $defaultItem, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MetricPeriodResponseCopyWith<$Res> implements $MetricPeriodResponseCopyWith<$Res> {
  factory _$MetricPeriodResponseCopyWith(_MetricPeriodResponse value, $Res Function(_MetricPeriodResponse) _then) = __$MetricPeriodResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'default') int defaultItem,@JsonKey(name: 'types') List<MetricPeriodItemResponse> items
});




}
/// @nodoc
class __$MetricPeriodResponseCopyWithImpl<$Res>
    implements _$MetricPeriodResponseCopyWith<$Res> {
  __$MetricPeriodResponseCopyWithImpl(this._self, this._then);

  final _MetricPeriodResponse _self;
  final $Res Function(_MetricPeriodResponse) _then;

/// Create a copy of MetricPeriodResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultItem = null,Object? items = null,}) {
  return _then(_MetricPeriodResponse(
defaultItem: null == defaultItem ? _self.defaultItem : defaultItem // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItemResponse>,
  ));
}


}


/// @nodoc
mixin _$MetricPeriodItemResponse {

@JsonKey(name: 'id') String get name; int get index;
/// Create a copy of MetricPeriodItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricPeriodItemResponseCopyWith<MetricPeriodItemResponse> get copyWith => _$MetricPeriodItemResponseCopyWithImpl<MetricPeriodItemResponse>(this as MetricPeriodItemResponse, _$identity);

  /// Serializes this MetricPeriodItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricPeriodItemResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,index);

@override
String toString() {
  return 'MetricPeriodItemResponse(name: $name, index: $index)';
}


}

/// @nodoc
abstract mixin class $MetricPeriodItemResponseCopyWith<$Res>  {
  factory $MetricPeriodItemResponseCopyWith(MetricPeriodItemResponse value, $Res Function(MetricPeriodItemResponse) _then) = _$MetricPeriodItemResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String name, int index
});




}
/// @nodoc
class _$MetricPeriodItemResponseCopyWithImpl<$Res>
    implements $MetricPeriodItemResponseCopyWith<$Res> {
  _$MetricPeriodItemResponseCopyWithImpl(this._self, this._then);

  final MetricPeriodItemResponse _self;
  final $Res Function(MetricPeriodItemResponse) _then;

/// Create a copy of MetricPeriodItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? index = null,}) {
  return _then(MetricPeriodItemResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricPeriodItemResponse].
extension MetricPeriodItemResponsePatterns on MetricPeriodItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricPeriodItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricPeriodItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricPeriodItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricPeriodItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String name,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricPeriodItemResponse() when $default != null:
return $default(_that.name,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String name,  int index)  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodItemResponse():
return $default(_that.name,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String name,  int index)?  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodItemResponse() when $default != null:
return $default(_that.name,_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetricPeriodItemResponse implements MetricPeriodItemResponse {
  const _MetricPeriodItemResponse({@JsonKey(name: 'id') required this.name, required this.index});
  factory _MetricPeriodItemResponse.fromJson(Map<String, dynamic> json) => _$MetricPeriodItemResponseFromJson(json);

@override@JsonKey(name: 'id') final  String name;
@override final  int index;

/// Create a copy of MetricPeriodItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricPeriodItemResponseCopyWith<_MetricPeriodItemResponse> get copyWith => __$MetricPeriodItemResponseCopyWithImpl<_MetricPeriodItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricPeriodItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricPeriodItemResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,index);

@override
String toString() {
  return 'MetricPeriodItemResponse(name: $name, index: $index)';
}


}

/// @nodoc
abstract mixin class _$MetricPeriodItemResponseCopyWith<$Res> implements $MetricPeriodItemResponseCopyWith<$Res> {
  factory _$MetricPeriodItemResponseCopyWith(_MetricPeriodItemResponse value, $Res Function(_MetricPeriodItemResponse) _then) = __$MetricPeriodItemResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String name, int index
});




}
/// @nodoc
class __$MetricPeriodItemResponseCopyWithImpl<$Res>
    implements _$MetricPeriodItemResponseCopyWith<$Res> {
  __$MetricPeriodItemResponseCopyWithImpl(this._self, this._then);

  final _MetricPeriodItemResponse _self;
  final $Res Function(_MetricPeriodItemResponse) _then;

/// Create a copy of MetricPeriodItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? index = null,}) {
  return _then(_MetricPeriodItemResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
