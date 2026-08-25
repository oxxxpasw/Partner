// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportData {

 ReportDataOptions get options; List<ReportDataColumn> get columns; List<Map<String, dynamic>> get rows;
/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataCopyWith<ReportData> get copyWith => _$ReportDataCopyWithImpl<ReportData>(this as ReportData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportData&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other.columns, columns)&&const DeepCollectionEquality().equals(other.rows, rows));
}


@override
int get hashCode => Object.hash(runtimeType,options,const DeepCollectionEquality().hash(columns),const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'ReportData(options: $options, columns: $columns, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $ReportDataCopyWith<$Res>  {
  factory $ReportDataCopyWith(ReportData value, $Res Function(ReportData) _then) = _$ReportDataCopyWithImpl;
@useResult
$Res call({
 ReportDataOptions options, List<ReportDataColumn> columns, List<Map<String, dynamic>> rows
});


$ReportDataOptionsCopyWith<$Res> get options;

}
/// @nodoc
class _$ReportDataCopyWithImpl<$Res>
    implements $ReportDataCopyWith<$Res> {
  _$ReportDataCopyWithImpl(this._self, this._then);

  final ReportData _self;
  final $Res Function(ReportData) _then;

/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = null,Object? columns = null,Object? rows = null,}) {
  return _then(ReportData(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ReportDataOptions,columns: null == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<ReportDataColumn>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}
/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataOptionsCopyWith<$Res> get options {
  
  return $ReportDataOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportData].
extension ReportDataPatterns on ReportData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportData value)  $default,){
final _that = this;
switch (_that) {
case _ReportData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportData value)?  $default,){
final _that = this;
switch (_that) {
case _ReportData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportDataOptions options,  List<ReportDataColumn> columns,  List<Map<String, dynamic>> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportData() when $default != null:
return $default(_that.options,_that.columns,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportDataOptions options,  List<ReportDataColumn> columns,  List<Map<String, dynamic>> rows)  $default,) {final _that = this;
switch (_that) {
case _ReportData():
return $default(_that.options,_that.columns,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportDataOptions options,  List<ReportDataColumn> columns,  List<Map<String, dynamic>> rows)?  $default,) {final _that = this;
switch (_that) {
case _ReportData() when $default != null:
return $default(_that.options,_that.columns,_that.rows);case _:
  return null;

}
}

}

/// @nodoc


class _ReportData implements ReportData {
  const _ReportData({required this.options, required  List<ReportDataColumn> columns, required  List<Map<String, dynamic>> rows}): _columns = columns,_rows = rows;
  

@override final  ReportDataOptions options;
 final  List<ReportDataColumn> _columns;
@override List<ReportDataColumn> get columns {
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_columns);
}

 final  List<Map<String, dynamic>> _rows;
@override List<Map<String, dynamic>> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataCopyWith<_ReportData> get copyWith => __$ReportDataCopyWithImpl<_ReportData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportData&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other._columns, _columns)&&const DeepCollectionEquality().equals(other._rows, _rows));
}


@override
int get hashCode => Object.hash(runtimeType,options,const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'ReportData(options: $options, columns: $columns, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$ReportDataCopyWith<$Res> implements $ReportDataCopyWith<$Res> {
  factory _$ReportDataCopyWith(_ReportData value, $Res Function(_ReportData) _then) = __$ReportDataCopyWithImpl;
@override @useResult
$Res call({
 ReportDataOptions options, List<ReportDataColumn> columns, List<Map<String, dynamic>> rows
});


@override $ReportDataOptionsCopyWith<$Res> get options;

}
/// @nodoc
class __$ReportDataCopyWithImpl<$Res>
    implements _$ReportDataCopyWith<$Res> {
  __$ReportDataCopyWithImpl(this._self, this._then);

  final _ReportData _self;
  final $Res Function(_ReportData) _then;

/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = null,Object? columns = null,Object? rows = null,}) {
  return _then(_ReportData(
options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ReportDataOptions,columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<ReportDataColumn>,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

/// Create a copy of ReportData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataOptionsCopyWith<$Res> get options {
  
  return $ReportDataOptionsCopyWith<$Res>(_self.options, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}

/// @nodoc
mixin _$ReportDataOptions {

 String? get title;
/// Create a copy of ReportDataOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataOptionsCopyWith<ReportDataOptions> get copyWith => _$ReportDataOptionsCopyWithImpl<ReportDataOptions>(this as ReportDataOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataOptions&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'ReportDataOptions(title: $title)';
}


}

/// @nodoc
abstract mixin class $ReportDataOptionsCopyWith<$Res>  {
  factory $ReportDataOptionsCopyWith(ReportDataOptions value, $Res Function(ReportDataOptions) _then) = _$ReportDataOptionsCopyWithImpl;
@useResult
$Res call({
 String? title
});




}
/// @nodoc
class _$ReportDataOptionsCopyWithImpl<$Res>
    implements $ReportDataOptionsCopyWith<$Res> {
  _$ReportDataOptionsCopyWithImpl(this._self, this._then);

  final ReportDataOptions _self;
  final $Res Function(ReportDataOptions) _then;

/// Create a copy of ReportDataOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,}) {
  return _then(ReportDataOptions(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportDataOptions].
extension ReportDataOptionsPatterns on ReportDataOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataOptions value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataOptions value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDataOptions() when $default != null:
return $default(_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title)  $default,) {final _that = this;
switch (_that) {
case _ReportDataOptions():
return $default(_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title)?  $default,) {final _that = this;
switch (_that) {
case _ReportDataOptions() when $default != null:
return $default(_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _ReportDataOptions implements ReportDataOptions {
  const _ReportDataOptions({this.title});
  

@override final  String? title;

/// Create a copy of ReportDataOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataOptionsCopyWith<_ReportDataOptions> get copyWith => __$ReportDataOptionsCopyWithImpl<_ReportDataOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataOptions&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'ReportDataOptions(title: $title)';
}


}

/// @nodoc
abstract mixin class _$ReportDataOptionsCopyWith<$Res> implements $ReportDataOptionsCopyWith<$Res> {
  factory _$ReportDataOptionsCopyWith(_ReportDataOptions value, $Res Function(_ReportDataOptions) _then) = __$ReportDataOptionsCopyWithImpl;
@override @useResult
$Res call({
 String? title
});




}
/// @nodoc
class __$ReportDataOptionsCopyWithImpl<$Res>
    implements _$ReportDataOptionsCopyWith<$Res> {
  __$ReportDataOptionsCopyWithImpl(this._self, this._then);

  final _ReportDataOptions _self;
  final $Res Function(_ReportDataOptions) _then;

/// Create a copy of ReportDataOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,}) {
  return _then(_ReportDataOptions(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReportDataColumn {

 String get key; String? get title; ReportDataColumnType get type; bool get isVisible;
/// Create a copy of ReportDataColumn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataColumnCopyWith<ReportDataColumn> get copyWith => _$ReportDataColumnCopyWithImpl<ReportDataColumn>(this as ReportDataColumn, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataColumn&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,key,title,type,isVisible);

@override
String toString() {
  return 'ReportDataColumn(key: $key, title: $title, type: $type, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ReportDataColumnCopyWith<$Res>  {
  factory $ReportDataColumnCopyWith(ReportDataColumn value, $Res Function(ReportDataColumn) _then) = _$ReportDataColumnCopyWithImpl;
@useResult
$Res call({
 String key, String? title, ReportDataColumnType type, bool isVisible
});




}
/// @nodoc
class _$ReportDataColumnCopyWithImpl<$Res>
    implements $ReportDataColumnCopyWith<$Res> {
  _$ReportDataColumnCopyWithImpl(this._self, this._then);

  final ReportDataColumn _self;
  final $Res Function(ReportDataColumn) _then;

/// Create a copy of ReportDataColumn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = freezed,Object? type = null,Object? isVisible = null,}) {
  return _then(ReportDataColumn(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportDataColumnType,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportDataColumn].
extension ReportDataColumnPatterns on ReportDataColumn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataColumn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataColumn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataColumn value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataColumn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataColumn value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataColumn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String? title,  ReportDataColumnType type,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDataColumn() when $default != null:
return $default(_that.key,_that.title,_that.type,_that.isVisible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String? title,  ReportDataColumnType type,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _ReportDataColumn():
return $default(_that.key,_that.title,_that.type,_that.isVisible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String? title,  ReportDataColumnType type,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _ReportDataColumn() when $default != null:
return $default(_that.key,_that.title,_that.type,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc


class _ReportDataColumn implements ReportDataColumn {
  const _ReportDataColumn({required this.key, this.title, required this.type, required this.isVisible});
  

@override final  String key;
@override final  String? title;
@override final  ReportDataColumnType type;
@override final  bool isVisible;

/// Create a copy of ReportDataColumn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataColumnCopyWith<_ReportDataColumn> get copyWith => __$ReportDataColumnCopyWithImpl<_ReportDataColumn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataColumn&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode => Object.hash(runtimeType,key,title,type,isVisible);

@override
String toString() {
  return 'ReportDataColumn(key: $key, title: $title, type: $type, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$ReportDataColumnCopyWith<$Res> implements $ReportDataColumnCopyWith<$Res> {
  factory _$ReportDataColumnCopyWith(_ReportDataColumn value, $Res Function(_ReportDataColumn) _then) = __$ReportDataColumnCopyWithImpl;
@override @useResult
$Res call({
 String key, String? title, ReportDataColumnType type, bool isVisible
});




}
/// @nodoc
class __$ReportDataColumnCopyWithImpl<$Res>
    implements _$ReportDataColumnCopyWith<$Res> {
  __$ReportDataColumnCopyWithImpl(this._self, this._then);

  final _ReportDataColumn _self;
  final $Res Function(_ReportDataColumn) _then;

/// Create a copy of ReportDataColumn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = freezed,Object? type = null,Object? isVisible = null,}) {
  return _then(_ReportDataColumn(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportDataColumnType,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
