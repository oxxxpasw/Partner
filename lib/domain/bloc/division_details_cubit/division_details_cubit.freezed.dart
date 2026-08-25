// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DivisionDetailsState {

 DivisionDetailsStatus get status; List<DivisionUnit>? get units; List<MetricPeriodItem>? get metricPeriods; MetricPeriodItem? get period; List<ReportResponse>? get reports; Division? get division; List<Map<String, dynamic>> get ingredients;
/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionDetailsStateCopyWith<DivisionDetailsState> get copyWith => _$DivisionDetailsStateCopyWithImpl<DivisionDetailsState>(this as DivisionDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionDetailsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.units, units)&&const DeepCollectionEquality().equals(other.metricPeriods, metricPeriods)&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.reports, reports)&&(identical(other.division, division) || other.division == division)&&const DeepCollectionEquality().equals(other.ingredients, ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(units),const DeepCollectionEquality().hash(metricPeriods),period,const DeepCollectionEquality().hash(reports),division,const DeepCollectionEquality().hash(ingredients));

@override
String toString() {
  return 'DivisionDetailsState(status: $status, units: $units, metricPeriods: $metricPeriods, period: $period, reports: $reports, division: $division, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $DivisionDetailsStateCopyWith<$Res>  {
  factory $DivisionDetailsStateCopyWith(DivisionDetailsState value, $Res Function(DivisionDetailsState) _then) = _$DivisionDetailsStateCopyWithImpl;
@useResult
$Res call({
 DivisionDetailsStatus status, List<DivisionUnit>? units, List<MetricPeriodItem>? metricPeriods, MetricPeriodItem? period, List<ReportResponse>? reports, Division? division, List<Map<String, dynamic>> ingredients
});


$MetricPeriodItemCopyWith<$Res>? get period;$DivisionCopyWith<$Res>? get division;

}
/// @nodoc
class _$DivisionDetailsStateCopyWithImpl<$Res>
    implements $DivisionDetailsStateCopyWith<$Res> {
  _$DivisionDetailsStateCopyWithImpl(this._self, this._then);

  final DivisionDetailsState _self;
  final $Res Function(DivisionDetailsState) _then;

/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? units = freezed,Object? metricPeriods = freezed,Object? period = freezed,Object? reports = freezed,Object? division = freezed,Object? ingredients = null,}) {
  return _then(DivisionDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionDetailsStatus,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<DivisionUnit>?,metricPeriods: freezed == metricPeriods ? _self.metricPeriods : metricPeriods // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem?,reports: freezed == reports ? _self.reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportResponse>?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}
/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricPeriodItemCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $MetricPeriodItemCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}


/// Adds pattern-matching-related methods to [DivisionDetailsState].
extension DivisionDetailsStatePatterns on DivisionDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _DivisionDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DivisionDetailsStatus status,  List<DivisionUnit>? units,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period,  List<ReportResponse>? reports,  Division? division,  List<Map<String, dynamic>> ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionDetailsState() when $default != null:
return $default(_that.status,_that.units,_that.metricPeriods,_that.period,_that.reports,_that.division,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DivisionDetailsStatus status,  List<DivisionUnit>? units,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period,  List<ReportResponse>? reports,  Division? division,  List<Map<String, dynamic>> ingredients)  $default,) {final _that = this;
switch (_that) {
case _DivisionDetailsState():
return $default(_that.status,_that.units,_that.metricPeriods,_that.period,_that.reports,_that.division,_that.ingredients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DivisionDetailsStatus status,  List<DivisionUnit>? units,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period,  List<ReportResponse>? reports,  Division? division,  List<Map<String, dynamic>> ingredients)?  $default,) {final _that = this;
switch (_that) {
case _DivisionDetailsState() when $default != null:
return $default(_that.status,_that.units,_that.metricPeriods,_that.period,_that.reports,_that.division,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc


class _DivisionDetailsState implements DivisionDetailsState {
  const _DivisionDetailsState({this.status = DivisionDetailsStatus.init,  List<DivisionUnit>? units,  List<MetricPeriodItem>? metricPeriods, this.period,  List<ReportResponse>? reports, this.division,  List<Map<String, dynamic>> ingredients = const []}): _units = units,_metricPeriods = metricPeriods,_reports = reports,_ingredients = ingredients;
  

@override@JsonKey() final  DivisionDetailsStatus status;
 final  List<DivisionUnit>? _units;
@override List<DivisionUnit>? get units {
  final value = _units;
  if (value == null) return null;
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<MetricPeriodItem>? _metricPeriods;
@override List<MetricPeriodItem>? get metricPeriods {
  final value = _metricPeriods;
  if (value == null) return null;
  if (_metricPeriods is EqualUnmodifiableListView) return _metricPeriods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetricPeriodItem? period;
 final  List<ReportResponse>? _reports;
@override List<ReportResponse>? get reports {
  final value = _reports;
  if (value == null) return null;
  if (_reports is EqualUnmodifiableListView) return _reports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Division? division;
 final  List<Map<String, dynamic>> _ingredients;
@override@JsonKey() List<Map<String, dynamic>> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}


/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionDetailsStateCopyWith<_DivisionDetailsState> get copyWith => __$DivisionDetailsStateCopyWithImpl<_DivisionDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionDetailsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._units, _units)&&const DeepCollectionEquality().equals(other._metricPeriods, _metricPeriods)&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other._reports, _reports)&&(identical(other.division, division) || other.division == division)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_units),const DeepCollectionEquality().hash(_metricPeriods),period,const DeepCollectionEquality().hash(_reports),division,const DeepCollectionEquality().hash(_ingredients));

@override
String toString() {
  return 'DivisionDetailsState(status: $status, units: $units, metricPeriods: $metricPeriods, period: $period, reports: $reports, division: $division, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$DivisionDetailsStateCopyWith<$Res> implements $DivisionDetailsStateCopyWith<$Res> {
  factory _$DivisionDetailsStateCopyWith(_DivisionDetailsState value, $Res Function(_DivisionDetailsState) _then) = __$DivisionDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 DivisionDetailsStatus status, List<DivisionUnit>? units, List<MetricPeriodItem>? metricPeriods, MetricPeriodItem? period, List<ReportResponse>? reports, Division? division, List<Map<String, dynamic>> ingredients
});


@override $MetricPeriodItemCopyWith<$Res>? get period;@override $DivisionCopyWith<$Res>? get division;

}
/// @nodoc
class __$DivisionDetailsStateCopyWithImpl<$Res>
    implements _$DivisionDetailsStateCopyWith<$Res> {
  __$DivisionDetailsStateCopyWithImpl(this._self, this._then);

  final _DivisionDetailsState _self;
  final $Res Function(_DivisionDetailsState) _then;

/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? units = freezed,Object? metricPeriods = freezed,Object? period = freezed,Object? reports = freezed,Object? division = freezed,Object? ingredients = null,}) {
  return _then(_DivisionDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionDetailsStatus,units: freezed == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<DivisionUnit>?,metricPeriods: freezed == metricPeriods ? _self._metricPeriods : metricPeriods // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem?,reports: freezed == reports ? _self._reports : reports // ignore: cast_nullable_to_non_nullable
as List<ReportResponse>?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as Division?,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricPeriodItemCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $MetricPeriodItemCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of DivisionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionCopyWith<$Res>? get division {
    if (_self.division == null) {
    return null;
  }

  return $DivisionCopyWith<$Res>(_self.division!, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}

/// @nodoc
mixin _$DivisionDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DivisionDetailsSr()';
}


}

/// @nodoc
class $DivisionDetailsSrCopyWith<$Res>  {
$DivisionDetailsSrCopyWith(DivisionDetailsSr _, $Res Function(DivisionDetailsSr) __);
}


/// Adds pattern-matching-related methods to [DivisionDetailsSr].
extension DivisionDetailsSrPatterns on DivisionDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DivisionDetailsErrorSr value)?  error,TResult Function( CreateDivisionDocumentSr value)?  createDivisionDocument,TResult Function( ShowReportScreenSr value)?  showReportScreen,TResult Function( ShowEventsScreenSr value)?  showEventsScreen,TResult Function( ShowTempScreenSr value)?  showTempScreen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DivisionDetailsErrorSr() when error != null:
return error(_that);case CreateDivisionDocumentSr() when createDivisionDocument != null:
return createDivisionDocument(_that);case ShowReportScreenSr() when showReportScreen != null:
return showReportScreen(_that);case ShowEventsScreenSr() when showEventsScreen != null:
return showEventsScreen(_that);case ShowTempScreenSr() when showTempScreen != null:
return showTempScreen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DivisionDetailsErrorSr value)  error,required TResult Function( CreateDivisionDocumentSr value)  createDivisionDocument,required TResult Function( ShowReportScreenSr value)  showReportScreen,required TResult Function( ShowEventsScreenSr value)  showEventsScreen,required TResult Function( ShowTempScreenSr value)  showTempScreen,}){
final _that = this;
switch (_that) {
case DivisionDetailsErrorSr():
return error(_that);case CreateDivisionDocumentSr():
return createDivisionDocument(_that);case ShowReportScreenSr():
return showReportScreen(_that);case ShowEventsScreenSr():
return showEventsScreen(_that);case ShowTempScreenSr():
return showTempScreen(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DivisionDetailsErrorSr value)?  error,TResult? Function( CreateDivisionDocumentSr value)?  createDivisionDocument,TResult? Function( ShowReportScreenSr value)?  showReportScreen,TResult? Function( ShowEventsScreenSr value)?  showEventsScreen,TResult? Function( ShowTempScreenSr value)?  showTempScreen,}){
final _that = this;
switch (_that) {
case DivisionDetailsErrorSr() when error != null:
return error(_that);case CreateDivisionDocumentSr() when createDivisionDocument != null:
return createDivisionDocument(_that);case ShowReportScreenSr() when showReportScreen != null:
return showReportScreen(_that);case ShowEventsScreenSr() when showEventsScreen != null:
return showEventsScreen(_that);case ShowTempScreenSr() when showTempScreen != null:
return showTempScreen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function( Store store,  OrderCreationType type,  String unitId)?  createDivisionDocument,TResult Function( String id,  String unitId)?  showReportScreen,TResult Function( String unitId)?  showEventsScreen,TResult Function( String unitId)?  showTempScreen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DivisionDetailsErrorSr() when error != null:
return error(_that.message);case CreateDivisionDocumentSr() when createDivisionDocument != null:
return createDivisionDocument(_that.store,_that.type,_that.unitId);case ShowReportScreenSr() when showReportScreen != null:
return showReportScreen(_that.id,_that.unitId);case ShowEventsScreenSr() when showEventsScreen != null:
return showEventsScreen(_that.unitId);case ShowTempScreenSr() when showTempScreen != null:
return showTempScreen(_that.unitId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function( Store store,  OrderCreationType type,  String unitId)  createDivisionDocument,required TResult Function( String id,  String unitId)  showReportScreen,required TResult Function( String unitId)  showEventsScreen,required TResult Function( String unitId)  showTempScreen,}) {final _that = this;
switch (_that) {
case DivisionDetailsErrorSr():
return error(_that.message);case CreateDivisionDocumentSr():
return createDivisionDocument(_that.store,_that.type,_that.unitId);case ShowReportScreenSr():
return showReportScreen(_that.id,_that.unitId);case ShowEventsScreenSr():
return showEventsScreen(_that.unitId);case ShowTempScreenSr():
return showTempScreen(_that.unitId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function( Store store,  OrderCreationType type,  String unitId)?  createDivisionDocument,TResult? Function( String id,  String unitId)?  showReportScreen,TResult? Function( String unitId)?  showEventsScreen,TResult? Function( String unitId)?  showTempScreen,}) {final _that = this;
switch (_that) {
case DivisionDetailsErrorSr() when error != null:
return error(_that.message);case CreateDivisionDocumentSr() when createDivisionDocument != null:
return createDivisionDocument(_that.store,_that.type,_that.unitId);case ShowReportScreenSr() when showReportScreen != null:
return showReportScreen(_that.id,_that.unitId);case ShowEventsScreenSr() when showEventsScreen != null:
return showEventsScreen(_that.unitId);case ShowTempScreenSr() when showTempScreen != null:
return showTempScreen(_that.unitId);case _:
  return null;

}
}

}

/// @nodoc


class DivisionDetailsErrorSr implements DivisionDetailsSr {
  const DivisionDetailsErrorSr(this.message);
  

 final  String message;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionDetailsErrorSrCopyWith<DivisionDetailsErrorSr> get copyWith => _$DivisionDetailsErrorSrCopyWithImpl<DivisionDetailsErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionDetailsErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DivisionDetailsSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $DivisionDetailsErrorSrCopyWith<$Res> implements $DivisionDetailsSrCopyWith<$Res> {
  factory $DivisionDetailsErrorSrCopyWith(DivisionDetailsErrorSr value, $Res Function(DivisionDetailsErrorSr) _then) = _$DivisionDetailsErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DivisionDetailsErrorSrCopyWithImpl<$Res>
    implements $DivisionDetailsErrorSrCopyWith<$Res> {
  _$DivisionDetailsErrorSrCopyWithImpl(this._self, this._then);

  final DivisionDetailsErrorSr _self;
  final $Res Function(DivisionDetailsErrorSr) _then;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DivisionDetailsErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateDivisionDocumentSr implements DivisionDetailsSr {
  const CreateDivisionDocumentSr({required this.store, required this.type, required this.unitId});
  

 final  Store store;
 final  OrderCreationType type;
 final  String unitId;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDivisionDocumentSrCopyWith<CreateDivisionDocumentSr> get copyWith => _$CreateDivisionDocumentSrCopyWithImpl<CreateDivisionDocumentSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDivisionDocumentSr&&(identical(other.store, store) || other.store == store)&&(identical(other.type, type) || other.type == type)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}


@override
int get hashCode => Object.hash(runtimeType,store,type,unitId);

@override
String toString() {
  return 'DivisionDetailsSr.createDivisionDocument(store: $store, type: $type, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $CreateDivisionDocumentSrCopyWith<$Res> implements $DivisionDetailsSrCopyWith<$Res> {
  factory $CreateDivisionDocumentSrCopyWith(CreateDivisionDocumentSr value, $Res Function(CreateDivisionDocumentSr) _then) = _$CreateDivisionDocumentSrCopyWithImpl;
@useResult
$Res call({
 Store store, OrderCreationType type, String unitId
});


$StoreCopyWith<$Res> get store;

}
/// @nodoc
class _$CreateDivisionDocumentSrCopyWithImpl<$Res>
    implements $CreateDivisionDocumentSrCopyWith<$Res> {
  _$CreateDivisionDocumentSrCopyWithImpl(this._self, this._then);

  final CreateDivisionDocumentSr _self;
  final $Res Function(CreateDivisionDocumentSr) _then;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? store = null,Object? type = null,Object? unitId = null,}) {
  return _then(CreateDivisionDocumentSr(
store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OrderCreationType,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res> get store {
  
  return $StoreCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc


class ShowReportScreenSr implements DivisionDetailsSr {
  const ShowReportScreenSr({required this.id, required this.unitId});
  

 final  String id;
 final  String unitId;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowReportScreenSrCopyWith<ShowReportScreenSr> get copyWith => _$ShowReportScreenSrCopyWithImpl<ShowReportScreenSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowReportScreenSr&&(identical(other.id, id) || other.id == id)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}


@override
int get hashCode => Object.hash(runtimeType,id,unitId);

@override
String toString() {
  return 'DivisionDetailsSr.showReportScreen(id: $id, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $ShowReportScreenSrCopyWith<$Res> implements $DivisionDetailsSrCopyWith<$Res> {
  factory $ShowReportScreenSrCopyWith(ShowReportScreenSr value, $Res Function(ShowReportScreenSr) _then) = _$ShowReportScreenSrCopyWithImpl;
@useResult
$Res call({
 String id, String unitId
});




}
/// @nodoc
class _$ShowReportScreenSrCopyWithImpl<$Res>
    implements $ShowReportScreenSrCopyWith<$Res> {
  _$ShowReportScreenSrCopyWithImpl(this._self, this._then);

  final ShowReportScreenSr _self;
  final $Res Function(ShowReportScreenSr) _then;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unitId = null,}) {
  return _then(ShowReportScreenSr(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShowEventsScreenSr implements DivisionDetailsSr {
  const ShowEventsScreenSr({required this.unitId});
  

 final  String unitId;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowEventsScreenSrCopyWith<ShowEventsScreenSr> get copyWith => _$ShowEventsScreenSrCopyWithImpl<ShowEventsScreenSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowEventsScreenSr&&(identical(other.unitId, unitId) || other.unitId == unitId));
}


@override
int get hashCode => Object.hash(runtimeType,unitId);

@override
String toString() {
  return 'DivisionDetailsSr.showEventsScreen(unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $ShowEventsScreenSrCopyWith<$Res> implements $DivisionDetailsSrCopyWith<$Res> {
  factory $ShowEventsScreenSrCopyWith(ShowEventsScreenSr value, $Res Function(ShowEventsScreenSr) _then) = _$ShowEventsScreenSrCopyWithImpl;
@useResult
$Res call({
 String unitId
});




}
/// @nodoc
class _$ShowEventsScreenSrCopyWithImpl<$Res>
    implements $ShowEventsScreenSrCopyWith<$Res> {
  _$ShowEventsScreenSrCopyWithImpl(this._self, this._then);

  final ShowEventsScreenSr _self;
  final $Res Function(ShowEventsScreenSr) _then;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? unitId = null,}) {
  return _then(ShowEventsScreenSr(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShowTempScreenSr implements DivisionDetailsSr {
  const ShowTempScreenSr({required this.unitId});
  

 final  String unitId;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowTempScreenSrCopyWith<ShowTempScreenSr> get copyWith => _$ShowTempScreenSrCopyWithImpl<ShowTempScreenSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowTempScreenSr&&(identical(other.unitId, unitId) || other.unitId == unitId));
}


@override
int get hashCode => Object.hash(runtimeType,unitId);

@override
String toString() {
  return 'DivisionDetailsSr.showTempScreen(unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class $ShowTempScreenSrCopyWith<$Res> implements $DivisionDetailsSrCopyWith<$Res> {
  factory $ShowTempScreenSrCopyWith(ShowTempScreenSr value, $Res Function(ShowTempScreenSr) _then) = _$ShowTempScreenSrCopyWithImpl;
@useResult
$Res call({
 String unitId
});




}
/// @nodoc
class _$ShowTempScreenSrCopyWithImpl<$Res>
    implements $ShowTempScreenSrCopyWith<$Res> {
  _$ShowTempScreenSrCopyWithImpl(this._self, this._then);

  final ShowTempScreenSr _self;
  final $Res Function(ShowTempScreenSr) _then;

/// Create a copy of DivisionDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? unitId = null,}) {
  return _then(ShowTempScreenSr(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
