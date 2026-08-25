// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reports_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportsResponse implements DiagnosticableTreeMixin {

 List<ReportResponse> get reports;
/// Create a copy of ReportsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportsResponseCopyWith<ReportsResponse> get copyWith => _$ReportsResponseCopyWithImpl<ReportsResponse>(this as ReportsResponse, _$identity);

  /// Serializes this ReportsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportsResponse'))
    ..add(DiagnosticsProperty('reports', reports));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportsResponse&&const DeepCollectionEquality().equals(other.reports, reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reports));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportsResponse(reports: $reports)';
}


}

/// @nodoc
abstract mixin class $ReportsResponseCopyWith<$Res>  {
  factory $ReportsResponseCopyWith(ReportsResponse value, $Res Function(ReportsResponse) _then) = _$ReportsResponseCopyWithImpl;
@useResult
$Res call({
 List<ReportResponse> reports
});




}
/// @nodoc
class _$ReportsResponseCopyWithImpl<$Res>
    implements $ReportsResponseCopyWith<$Res> {
  _$ReportsResponseCopyWithImpl(this._self, this._then);

  final ReportsResponse _self;
  final $Res Function(ReportsResponse) _then;

/// Create a copy of ReportsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reports = null,}) {
  return _then(ReportsResponse(
reports: null == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportsResponse].
extension ReportsResponsePatterns on ReportsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReportResponse> reports)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportsResponse() when $default != null:
return $default(_that.reports);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReportResponse> reports)  $default,) {final _that = this;
switch (_that) {
case _ReportsResponse():
return $default(_that.reports);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReportResponse> reports)?  $default,) {final _that = this;
switch (_that) {
case _ReportsResponse() when $default != null:
return $default(_that.reports);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportsResponse with DiagnosticableTreeMixin implements ReportsResponse {
  const _ReportsResponse({required  List<ReportResponse> reports}): _reports = reports;
  factory _ReportsResponse.fromJson(Map<String, dynamic> json) => _$ReportsResponseFromJson(json);

 final  List<ReportResponse> _reports;
@override List<ReportResponse> get reports {
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reports);
}


/// Create a copy of ReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportsResponseCopyWith<_ReportsResponse> get copyWith => __$ReportsResponseCopyWithImpl<_ReportsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportsResponse'))
    ..add(DiagnosticsProperty('reports', reports));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportsResponse&&const DeepCollectionEquality().equals(other._reports, _reports));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reports));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportsResponse(reports: $reports)';
}


}

/// @nodoc
abstract mixin class _$ReportsResponseCopyWith<$Res> implements $ReportsResponseCopyWith<$Res> {
  factory _$ReportsResponseCopyWith(_ReportsResponse value, $Res Function(_ReportsResponse) _then) = __$ReportsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ReportResponse> reports
});




}
/// @nodoc
class __$ReportsResponseCopyWithImpl<$Res>
    implements _$ReportsResponseCopyWith<$Res> {
  __$ReportsResponseCopyWithImpl(this._self, this._then);

  final _ReportsResponse _self;
  final $Res Function(_ReportsResponse) _then;

/// Create a copy of ReportsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reports = null,}) {
  return _then(_ReportsResponse(
reports: null == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportResponse>,
  ));
}


}


/// @nodoc
mixin _$ReportResponse implements DiagnosticableTreeMixin {

 String get id; String get name;
/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportResponseCopyWith<ReportResponse> get copyWith => _$ReportResponseCopyWithImpl<ReportResponse>(this as ReportResponse, _$identity);

  /// Serializes this ReportResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReportResponseCopyWith<$Res>  {
  factory $ReportResponseCopyWith(ReportResponse value, $Res Function(ReportResponse) _then) = _$ReportResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$ReportResponseCopyWithImpl<$Res>
    implements $ReportResponseCopyWith<$Res> {
  _$ReportResponseCopyWithImpl(this._self, this._then);

  final ReportResponse _self;
  final $Res Function(ReportResponse) _then;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(ReportResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportResponse].
extension ReportResponsePatterns on ReportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _ReportResponse():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ReportResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportResponse with DiagnosticableTreeMixin implements ReportResponse {
  const _ReportResponse({required this.id, required this.name});
  factory _ReportResponse.fromJson(Map<String, dynamic> json) => _$ReportResponseFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportResponseCopyWith<_ReportResponse> get copyWith => __$ReportResponseCopyWithImpl<_ReportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReportResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReportResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReportResponseCopyWith<$Res> implements $ReportResponseCopyWith<$Res> {
  factory _$ReportResponseCopyWith(_ReportResponse value, $Res Function(_ReportResponse) _then) = __$ReportResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$ReportResponseCopyWithImpl<$Res>
    implements _$ReportResponseCopyWith<$Res> {
  __$ReportResponseCopyWithImpl(this._self, this._then);

  final _ReportResponse _self;
  final $Res Function(_ReportResponse) _then;

/// Create a copy of ReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ReportResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
