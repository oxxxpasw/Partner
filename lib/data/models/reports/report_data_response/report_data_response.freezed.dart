// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportDataResponse implements DiagnosticableTreeMixin {

 ReportDataOptionsResponse? get options; List<ReportDataColumnResponse> get columns; List<Map<String, dynamic>> get rows;
/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataResponseCopyWith<ReportDataResponse> get copyWith => _$ReportDataResponseCopyWithImpl<ReportDataResponse>(this as ReportDataResponse, _$identity);

  /// Serializes this ReportDataResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataResponse'))
    ..add(DiagnosticsProperty('options', options))..add(DiagnosticsProperty('columns', columns))..add(DiagnosticsProperty('rows', rows));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataResponse&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other.columns, columns)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,options,const DeepCollectionEquality().hash(columns),const DeepCollectionEquality().hash(rows));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataResponse(options: $options, columns: $columns, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $ReportDataResponseCopyWith<$Res>  {
  factory $ReportDataResponseCopyWith(ReportDataResponse value, $Res Function(ReportDataResponse) _then) = _$ReportDataResponseCopyWithImpl;
@useResult
$Res call({
 ReportDataOptionsResponse? options, List<ReportDataColumnResponse> columns, List<Map<String, dynamic>> rows
});


$ReportDataOptionsResponseCopyWith<$Res>? get options;

}
/// @nodoc
class _$ReportDataResponseCopyWithImpl<$Res>
    implements $ReportDataResponseCopyWith<$Res> {
  _$ReportDataResponseCopyWithImpl(this._self, this._then);

  final ReportDataResponse _self;
  final $Res Function(ReportDataResponse) _then;

/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? options = freezed,Object? columns = null,Object? rows = null,}) {
  return _then(ReportDataResponse(
options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ReportDataOptionsResponse?,columns: null == columns ? _self.columns : columns // ignore: cast_nullable_to_non_nullable
as List<ReportDataColumnResponse>,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}
/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataOptionsResponseCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $ReportDataOptionsResponseCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportDataResponse].
extension ReportDataResponsePatterns on ReportDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportDataOptionsResponse? options,  List<ReportDataColumnResponse> columns,  List<Map<String, dynamic>> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportDataOptionsResponse? options,  List<ReportDataColumnResponse> columns,  List<Map<String, dynamic>> rows)  $default,) {final _that = this;
switch (_that) {
case _ReportDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportDataOptionsResponse? options,  List<ReportDataColumnResponse> columns,  List<Map<String, dynamic>> rows)?  $default,) {final _that = this;
switch (_that) {
case _ReportDataResponse() when $default != null:
return $default(_that.options,_that.columns,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportDataResponse with DiagnosticableTreeMixin implements ReportDataResponse {
  const _ReportDataResponse({this.options, required  List<ReportDataColumnResponse> columns, required  List<Map<String, dynamic>> rows}): _columns = columns,_rows = rows;
  factory _ReportDataResponse.fromJson(Map<String, dynamic> json) => _$ReportDataResponseFromJson(json);

@override final  ReportDataOptionsResponse? options;
 final  List<ReportDataColumnResponse> _columns;
@override List<ReportDataColumnResponse> get columns {
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


/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataResponseCopyWith<_ReportDataResponse> get copyWith => __$ReportDataResponseCopyWithImpl<_ReportDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportDataResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataResponse'))
    ..add(DiagnosticsProperty('options', options))..add(DiagnosticsProperty('columns', columns))..add(DiagnosticsProperty('rows', rows));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataResponse&&(identical(other.options, options) || other.options == options)&&const DeepCollectionEquality().equals(other._columns, _columns)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,options,const DeepCollectionEquality().hash(_columns),const DeepCollectionEquality().hash(_rows));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataResponse(options: $options, columns: $columns, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$ReportDataResponseCopyWith<$Res> implements $ReportDataResponseCopyWith<$Res> {
  factory _$ReportDataResponseCopyWith(_ReportDataResponse value, $Res Function(_ReportDataResponse) _then) = __$ReportDataResponseCopyWithImpl;
@override @useResult
$Res call({
 ReportDataOptionsResponse? options, List<ReportDataColumnResponse> columns, List<Map<String, dynamic>> rows
});


@override $ReportDataOptionsResponseCopyWith<$Res>? get options;

}
/// @nodoc
class __$ReportDataResponseCopyWithImpl<$Res>
    implements _$ReportDataResponseCopyWith<$Res> {
  __$ReportDataResponseCopyWithImpl(this._self, this._then);

  final _ReportDataResponse _self;
  final $Res Function(_ReportDataResponse) _then;

/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? options = freezed,Object? columns = null,Object? rows = null,}) {
  return _then(_ReportDataResponse(
options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as ReportDataOptionsResponse?,columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<ReportDataColumnResponse>,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

/// Create a copy of ReportDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataOptionsResponseCopyWith<$Res>? get options {
    if (_self.options == null) {
    return null;
  }

  return $ReportDataOptionsResponseCopyWith<$Res>(_self.options!, (value) {
    return _then(_self.copyWith(options: value));
  });
}
}


/// @nodoc
mixin _$ReportDataOptionsResponse implements DiagnosticableTreeMixin {

 String? get title;
/// Create a copy of ReportDataOptionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataOptionsResponseCopyWith<ReportDataOptionsResponse> get copyWith => _$ReportDataOptionsResponseCopyWithImpl<ReportDataOptionsResponse>(this as ReportDataOptionsResponse, _$identity);

  /// Serializes this ReportDataOptionsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataOptionsResponse'))
    ..add(DiagnosticsProperty('title', title));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataOptionsResponse&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataOptionsResponse(title: $title)';
}


}

/// @nodoc
abstract mixin class $ReportDataOptionsResponseCopyWith<$Res>  {
  factory $ReportDataOptionsResponseCopyWith(ReportDataOptionsResponse value, $Res Function(ReportDataOptionsResponse) _then) = _$ReportDataOptionsResponseCopyWithImpl;
@useResult
$Res call({
 String? title
});




}
/// @nodoc
class _$ReportDataOptionsResponseCopyWithImpl<$Res>
    implements $ReportDataOptionsResponseCopyWith<$Res> {
  _$ReportDataOptionsResponseCopyWithImpl(this._self, this._then);

  final ReportDataOptionsResponse _self;
  final $Res Function(ReportDataOptionsResponse) _then;

/// Create a copy of ReportDataOptionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,}) {
  return _then(ReportDataOptionsResponse(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportDataOptionsResponse].
extension ReportDataOptionsResponsePatterns on ReportDataOptionsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataOptionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataOptionsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataOptionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataOptionsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataOptionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataOptionsResponse() when $default != null:
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
case _ReportDataOptionsResponse() when $default != null:
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
case _ReportDataOptionsResponse():
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
case _ReportDataOptionsResponse() when $default != null:
return $default(_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportDataOptionsResponse with DiagnosticableTreeMixin implements ReportDataOptionsResponse {
  const _ReportDataOptionsResponse({this.title});
  factory _ReportDataOptionsResponse.fromJson(Map<String, dynamic> json) => _$ReportDataOptionsResponseFromJson(json);

@override final  String? title;

/// Create a copy of ReportDataOptionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataOptionsResponseCopyWith<_ReportDataOptionsResponse> get copyWith => __$ReportDataOptionsResponseCopyWithImpl<_ReportDataOptionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportDataOptionsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataOptionsResponse'))
    ..add(DiagnosticsProperty('title', title));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataOptionsResponse&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataOptionsResponse(title: $title)';
}


}

/// @nodoc
abstract mixin class _$ReportDataOptionsResponseCopyWith<$Res> implements $ReportDataOptionsResponseCopyWith<$Res> {
  factory _$ReportDataOptionsResponseCopyWith(_ReportDataOptionsResponse value, $Res Function(_ReportDataOptionsResponse) _then) = __$ReportDataOptionsResponseCopyWithImpl;
@override @useResult
$Res call({
 String? title
});




}
/// @nodoc
class __$ReportDataOptionsResponseCopyWithImpl<$Res>
    implements _$ReportDataOptionsResponseCopyWith<$Res> {
  __$ReportDataOptionsResponseCopyWithImpl(this._self, this._then);

  final _ReportDataOptionsResponse _self;
  final $Res Function(_ReportDataOptionsResponse) _then;

/// Create a copy of ReportDataOptionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,}) {
  return _then(_ReportDataOptionsResponse(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportDataColumnResponse implements DiagnosticableTreeMixin {

 String get key; String? get title;@JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string) ReportDataResponseDataType get type; bool get isVisible;
/// Create a copy of ReportDataColumnResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataColumnResponseCopyWith<ReportDataColumnResponse> get copyWith => _$ReportDataColumnResponseCopyWithImpl<ReportDataColumnResponse>(this as ReportDataColumnResponse, _$identity);

  /// Serializes this ReportDataColumnResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataColumnResponse'))
    ..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('isVisible', isVisible));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataColumnResponse&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,type,isVisible);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataColumnResponse(key: $key, title: $title, type: $type, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ReportDataColumnResponseCopyWith<$Res>  {
  factory $ReportDataColumnResponseCopyWith(ReportDataColumnResponse value, $Res Function(ReportDataColumnResponse) _then) = _$ReportDataColumnResponseCopyWithImpl;
@useResult
$Res call({
 String key, String? title,@JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string) ReportDataResponseDataType type, bool isVisible
});




}
/// @nodoc
class _$ReportDataColumnResponseCopyWithImpl<$Res>
    implements $ReportDataColumnResponseCopyWith<$Res> {
  _$ReportDataColumnResponseCopyWithImpl(this._self, this._then);

  final ReportDataColumnResponse _self;
  final $Res Function(ReportDataColumnResponse) _then;

/// Create a copy of ReportDataColumnResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? title = freezed,Object? type = null,Object? isVisible = null,}) {
  return _then(ReportDataColumnResponse(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportDataResponseDataType,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportDataColumnResponse].
extension ReportDataColumnResponsePatterns on ReportDataColumnResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataColumnResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataColumnResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataColumnResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataColumnResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataColumnResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataColumnResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String? title, @JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string)  ReportDataResponseDataType type,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDataColumnResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String? title, @JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string)  ReportDataResponseDataType type,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _ReportDataColumnResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String? title, @JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string)  ReportDataResponseDataType type,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _ReportDataColumnResponse() when $default != null:
return $default(_that.key,_that.title,_that.type,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportDataColumnResponse with DiagnosticableTreeMixin implements ReportDataColumnResponse {
  const _ReportDataColumnResponse({required this.key, this.title, @JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string) required this.type, this.isVisible = true});
  factory _ReportDataColumnResponse.fromJson(Map<String, dynamic> json) => _$ReportDataColumnResponseFromJson(json);

@override final  String key;
@override final  String? title;
@override@JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string) final  ReportDataResponseDataType type;
@override@JsonKey() final  bool isVisible;

/// Create a copy of ReportDataColumnResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataColumnResponseCopyWith<_ReportDataColumnResponse> get copyWith => __$ReportDataColumnResponseCopyWithImpl<_ReportDataColumnResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportDataColumnResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportDataColumnResponse'))
    ..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('isVisible', isVisible));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataColumnResponse&&(identical(other.key, key) || other.key == key)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,title,type,isVisible);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportDataColumnResponse(key: $key, title: $title, type: $type, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$ReportDataColumnResponseCopyWith<$Res> implements $ReportDataColumnResponseCopyWith<$Res> {
  factory _$ReportDataColumnResponseCopyWith(_ReportDataColumnResponse value, $Res Function(_ReportDataColumnResponse) _then) = __$ReportDataColumnResponseCopyWithImpl;
@override @useResult
$Res call({
 String key, String? title,@JsonKey(unknownEnumValue: ReportDataResponseDataType.unknown, defaultValue: ReportDataResponseDataType.string) ReportDataResponseDataType type, bool isVisible
});




}
/// @nodoc
class __$ReportDataColumnResponseCopyWithImpl<$Res>
    implements _$ReportDataColumnResponseCopyWith<$Res> {
  __$ReportDataColumnResponseCopyWithImpl(this._self, this._then);

  final _ReportDataColumnResponse _self;
  final $Res Function(_ReportDataColumnResponse) _then;

/// Create a copy of ReportDataColumnResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? title = freezed,Object? type = null,Object? isVisible = null,}) {
  return _then(_ReportDataColumnResponse(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ReportDataResponseDataType,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
