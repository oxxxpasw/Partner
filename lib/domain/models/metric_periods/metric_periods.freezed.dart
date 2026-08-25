// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metric_periods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MetricPeriods {

 MetricPeriodItem get defaultItem; List<MetricPeriodItem> get items;
/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricPeriodsCopyWith<MetricPeriods> get copyWith => _$MetricPeriodsCopyWithImpl<MetricPeriods>(this as MetricPeriods, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricPeriods&&(identical(other.defaultItem, defaultItem) || other.defaultItem == defaultItem)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,defaultItem,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'MetricPeriods(defaultItem: $defaultItem, items: $items)';
}


}

/// @nodoc
abstract mixin class $MetricPeriodsCopyWith<$Res>  {
  factory $MetricPeriodsCopyWith(MetricPeriods value, $Res Function(MetricPeriods) _then) = _$MetricPeriodsCopyWithImpl;
@useResult
$Res call({
 MetricPeriodItem defaultItem, List<MetricPeriodItem> items
});


$MetricPeriodItemCopyWith<$Res> get defaultItem;

}
/// @nodoc
class _$MetricPeriodsCopyWithImpl<$Res>
    implements $MetricPeriodsCopyWith<$Res> {
  _$MetricPeriodsCopyWithImpl(this._self, this._then);

  final MetricPeriods _self;
  final $Res Function(MetricPeriods) _then;

/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? defaultItem = null,Object? items = null,}) {
  return _then(MetricPeriods(
defaultItem: null == defaultItem ? _self.defaultItem : defaultItem // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>,
  ));
}
/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricPeriodItemCopyWith<$Res> get defaultItem {
  
  return $MetricPeriodItemCopyWith<$Res>(_self.defaultItem, (value) {
    return _then(_self.copyWith(defaultItem: value));
  });
}
}


/// Adds pattern-matching-related methods to [MetricPeriods].
extension MetricPeriodsPatterns on MetricPeriods {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricPeriods value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricPeriods() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricPeriods value)  $default,){
final _that = this;
switch (_that) {
case _MetricPeriods():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricPeriods value)?  $default,){
final _that = this;
switch (_that) {
case _MetricPeriods() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MetricPeriodItem defaultItem,  List<MetricPeriodItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricPeriods() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MetricPeriodItem defaultItem,  List<MetricPeriodItem> items)  $default,) {final _that = this;
switch (_that) {
case _MetricPeriods():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MetricPeriodItem defaultItem,  List<MetricPeriodItem> items)?  $default,) {final _that = this;
switch (_that) {
case _MetricPeriods() when $default != null:
return $default(_that.defaultItem,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _MetricPeriods implements MetricPeriods {
  const _MetricPeriods({required this.defaultItem, required  List<MetricPeriodItem> items}): _items = items;
  

@override final  MetricPeriodItem defaultItem;
 final  List<MetricPeriodItem> _items;
@override List<MetricPeriodItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricPeriodsCopyWith<_MetricPeriods> get copyWith => __$MetricPeriodsCopyWithImpl<_MetricPeriods>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricPeriods&&(identical(other.defaultItem, defaultItem) || other.defaultItem == defaultItem)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,defaultItem,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'MetricPeriods(defaultItem: $defaultItem, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MetricPeriodsCopyWith<$Res> implements $MetricPeriodsCopyWith<$Res> {
  factory _$MetricPeriodsCopyWith(_MetricPeriods value, $Res Function(_MetricPeriods) _then) = __$MetricPeriodsCopyWithImpl;
@override @useResult
$Res call({
 MetricPeriodItem defaultItem, List<MetricPeriodItem> items
});


@override $MetricPeriodItemCopyWith<$Res> get defaultItem;

}
/// @nodoc
class __$MetricPeriodsCopyWithImpl<$Res>
    implements _$MetricPeriodsCopyWith<$Res> {
  __$MetricPeriodsCopyWithImpl(this._self, this._then);

  final _MetricPeriods _self;
  final $Res Function(_MetricPeriods) _then;

/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? defaultItem = null,Object? items = null,}) {
  return _then(_MetricPeriods(
defaultItem: null == defaultItem ? _self.defaultItem : defaultItem // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>,
  ));
}

/// Create a copy of MetricPeriods
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricPeriodItemCopyWith<$Res> get defaultItem {
  
  return $MetricPeriodItemCopyWith<$Res>(_self.defaultItem, (value) {
    return _then(_self.copyWith(defaultItem: value));
  });
}
}

/// @nodoc
mixin _$MetricPeriodItem {

 String get name; int get index;
/// Create a copy of MetricPeriodItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricPeriodItemCopyWith<MetricPeriodItem> get copyWith => _$MetricPeriodItemCopyWithImpl<MetricPeriodItem>(this as MetricPeriodItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricPeriodItem&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,name,index);

@override
String toString() {
  return 'MetricPeriodItem(name: $name, index: $index)';
}


}

/// @nodoc
abstract mixin class $MetricPeriodItemCopyWith<$Res>  {
  factory $MetricPeriodItemCopyWith(MetricPeriodItem value, $Res Function(MetricPeriodItem) _then) = _$MetricPeriodItemCopyWithImpl;
@useResult
$Res call({
 String name, int index
});




}
/// @nodoc
class _$MetricPeriodItemCopyWithImpl<$Res>
    implements $MetricPeriodItemCopyWith<$Res> {
  _$MetricPeriodItemCopyWithImpl(this._self, this._then);

  final MetricPeriodItem _self;
  final $Res Function(MetricPeriodItem) _then;

/// Create a copy of MetricPeriodItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? index = null,}) {
  return _then(MetricPeriodItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricPeriodItem].
extension MetricPeriodItemPatterns on MetricPeriodItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricPeriodItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricPeriodItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricPeriodItem value)  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricPeriodItem value)?  $default,){
final _that = this;
switch (_that) {
case _MetricPeriodItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricPeriodItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int index)  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int index)?  $default,) {final _that = this;
switch (_that) {
case _MetricPeriodItem() when $default != null:
return $default(_that.name,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _MetricPeriodItem implements MetricPeriodItem {
  const _MetricPeriodItem({required this.name, required this.index});
  

@override final  String name;
@override final  int index;

/// Create a copy of MetricPeriodItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricPeriodItemCopyWith<_MetricPeriodItem> get copyWith => __$MetricPeriodItemCopyWithImpl<_MetricPeriodItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricPeriodItem&&(identical(other.name, name) || other.name == name)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,name,index);

@override
String toString() {
  return 'MetricPeriodItem(name: $name, index: $index)';
}


}

/// @nodoc
abstract mixin class _$MetricPeriodItemCopyWith<$Res> implements $MetricPeriodItemCopyWith<$Res> {
  factory _$MetricPeriodItemCopyWith(_MetricPeriodItem value, $Res Function(_MetricPeriodItem) _then) = __$MetricPeriodItemCopyWithImpl;
@override @useResult
$Res call({
 String name, int index
});




}
/// @nodoc
class __$MetricPeriodItemCopyWithImpl<$Res>
    implements _$MetricPeriodItemCopyWith<$Res> {
  __$MetricPeriodItemCopyWithImpl(this._self, this._then);

  final _MetricPeriodItem _self;
  final $Res Function(_MetricPeriodItem) _then;

/// Create a copy of MetricPeriodItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? index = null,}) {
  return _then(_MetricPeriodItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
