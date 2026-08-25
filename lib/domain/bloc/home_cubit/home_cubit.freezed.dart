// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 HomeStatus get status; List<Division>? get divisions; List<VendistaRequest>? get vendistaRequests; List<MetricPeriodItem>? get metricPeriods; MetricPeriodItem? get period;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.divisions, divisions)&&const DeepCollectionEquality().equals(other.vendistaRequests, vendistaRequests)&&const DeepCollectionEquality().equals(other.metricPeriods, metricPeriods)&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(divisions),const DeepCollectionEquality().hash(vendistaRequests),const DeepCollectionEquality().hash(metricPeriods),period);

@override
String toString() {
  return 'HomeState(status: $status, divisions: $divisions, vendistaRequests: $vendistaRequests, metricPeriods: $metricPeriods, period: $period)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus status, List<Division>? divisions, List<VendistaRequest>? vendistaRequests, List<MetricPeriodItem>? metricPeriods, MetricPeriodItem? period
});


$MetricPeriodItemCopyWith<$Res>? get period;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? divisions = freezed,Object? vendistaRequests = freezed,Object? metricPeriods = freezed,Object? period = freezed,}) {
  return _then(HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,divisions: freezed == divisions ? _self.divisions : divisions // ignore: cast_nullable_to_non_nullable
as List<Division>?,vendistaRequests: freezed == vendistaRequests ? _self.vendistaRequests : vendistaRequests // ignore: cast_nullable_to_non_nullable
as List<VendistaRequest>?,metricPeriods: freezed == metricPeriods ? _self.metricPeriods : metricPeriods // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem?,
  ));
}
/// Create a copy of HomeState
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
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeStatus status,  List<Division>? divisions,  List<VendistaRequest>? vendistaRequests,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.divisions,_that.vendistaRequests,_that.metricPeriods,_that.period);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeStatus status,  List<Division>? divisions,  List<VendistaRequest>? vendistaRequests,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.status,_that.divisions,_that.vendistaRequests,_that.metricPeriods,_that.period);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeStatus status,  List<Division>? divisions,  List<VendistaRequest>? vendistaRequests,  List<MetricPeriodItem>? metricPeriods,  MetricPeriodItem? period)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.status,_that.divisions,_that.vendistaRequests,_that.metricPeriods,_that.period);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.status = HomeStatus.init,  List<Division>? divisions,  List<VendistaRequest>? vendistaRequests,  List<MetricPeriodItem>? metricPeriods, this.period}): _divisions = divisions,_vendistaRequests = vendistaRequests,_metricPeriods = metricPeriods;
  

@override@JsonKey() final  HomeStatus status;
 final  List<Division>? _divisions;
@override List<Division>? get divisions {
  final value = _divisions;
  if (value == null) return null;
  if (_divisions is EqualUnmodifiableListView) return _divisions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<VendistaRequest>? _vendistaRequests;
@override List<VendistaRequest>? get vendistaRequests {
  final value = _vendistaRequests;
  if (value == null) return null;
  if (_vendistaRequests is EqualUnmodifiableListView) return _vendistaRequests;
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

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._divisions, _divisions)&&const DeepCollectionEquality().equals(other._vendistaRequests, _vendistaRequests)&&const DeepCollectionEquality().equals(other._metricPeriods, _metricPeriods)&&(identical(other.period, period) || other.period == period));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_divisions),const DeepCollectionEquality().hash(_vendistaRequests),const DeepCollectionEquality().hash(_metricPeriods),period);

@override
String toString() {
  return 'HomeState(status: $status, divisions: $divisions, vendistaRequests: $vendistaRequests, metricPeriods: $metricPeriods, period: $period)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus status, List<Division>? divisions, List<VendistaRequest>? vendistaRequests, List<MetricPeriodItem>? metricPeriods, MetricPeriodItem? period
});


@override $MetricPeriodItemCopyWith<$Res>? get period;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? divisions = freezed,Object? vendistaRequests = freezed,Object? metricPeriods = freezed,Object? period = freezed,}) {
  return _then(_HomeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus,divisions: freezed == divisions ? _self._divisions : divisions // ignore: cast_nullable_to_non_nullable
as List<Division>?,vendistaRequests: freezed == vendistaRequests ? _self._vendistaRequests : vendistaRequests // ignore: cast_nullable_to_non_nullable
as List<VendistaRequest>?,metricPeriods: freezed == metricPeriods ? _self._metricPeriods : metricPeriods // ignore: cast_nullable_to_non_nullable
as List<MetricPeriodItem>?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as MetricPeriodItem?,
  ));
}

/// Create a copy of HomeState
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
}
}

/// @nodoc
mixin _$HomeSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeSr()';
}


}

/// @nodoc
class $HomeSrCopyWith<$Res>  {
$HomeSrCopyWith(HomeSr _, $Res Function(HomeSr) __);
}


/// Adds pattern-matching-related methods to [HomeSr].
extension HomeSrPatterns on HomeSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeErrorSr value)?  error,TResult Function( HomeSuccessSr value)?  success,TResult Function( HomeSrOpenDetailsSr value)?  openDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeErrorSr() when error != null:
return error(_that);case HomeSuccessSr() when success != null:
return success(_that);case HomeSrOpenDetailsSr() when openDetails != null:
return openDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeErrorSr value)  error,required TResult Function( HomeSuccessSr value)  success,required TResult Function( HomeSrOpenDetailsSr value)  openDetails,}){
final _that = this;
switch (_that) {
case HomeErrorSr():
return error(_that);case HomeSuccessSr():
return success(_that);case HomeSrOpenDetailsSr():
return openDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeErrorSr value)?  error,TResult? Function( HomeSuccessSr value)?  success,TResult? Function( HomeSrOpenDetailsSr value)?  openDetails,}){
final _that = this;
switch (_that) {
case HomeErrorSr() when error != null:
return error(_that);case HomeSuccessSr() when success != null:
return success(_that);case HomeSrOpenDetailsSr() when openDetails != null:
return openDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,TResult Function( String message)?  success,TResult Function( VendistaRequest request)?  openDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeErrorSr() when error != null:
return error(_that.error);case HomeSuccessSr() when success != null:
return success(_that.message);case HomeSrOpenDetailsSr() when openDetails != null:
return openDetails(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,required TResult Function( String message)  success,required TResult Function( VendistaRequest request)  openDetails,}) {final _that = this;
switch (_that) {
case HomeErrorSr():
return error(_that.error);case HomeSuccessSr():
return success(_that.message);case HomeSrOpenDetailsSr():
return openDetails(_that.request);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,TResult? Function( String message)?  success,TResult? Function( VendistaRequest request)?  openDetails,}) {final _that = this;
switch (_that) {
case HomeErrorSr() when error != null:
return error(_that.error);case HomeSuccessSr() when success != null:
return success(_that.message);case HomeSrOpenDetailsSr() when openDetails != null:
return openDetails(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class HomeErrorSr implements HomeSr {
  const HomeErrorSr(this.error);
  

 final  String error;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorSrCopyWith<HomeErrorSr> get copyWith => _$HomeErrorSrCopyWithImpl<HomeErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $HomeErrorSrCopyWith<$Res> implements $HomeSrCopyWith<$Res> {
  factory $HomeErrorSrCopyWith(HomeErrorSr value, $Res Function(HomeErrorSr) _then) = _$HomeErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$HomeErrorSrCopyWithImpl<$Res>
    implements $HomeErrorSrCopyWith<$Res> {
  _$HomeErrorSrCopyWithImpl(this._self, this._then);

  final HomeErrorSr _self;
  final $Res Function(HomeErrorSr) _then;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HomeErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeSuccessSr implements HomeSr {
  const HomeSuccessSr(this.message);
  

 final  String message;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSuccessSrCopyWith<HomeSuccessSr> get copyWith => _$HomeSuccessSrCopyWithImpl<HomeSuccessSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccessSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeSr.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $HomeSuccessSrCopyWith<$Res> implements $HomeSrCopyWith<$Res> {
  factory $HomeSuccessSrCopyWith(HomeSuccessSr value, $Res Function(HomeSuccessSr) _then) = _$HomeSuccessSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HomeSuccessSrCopyWithImpl<$Res>
    implements $HomeSuccessSrCopyWith<$Res> {
  _$HomeSuccessSrCopyWithImpl(this._self, this._then);

  final HomeSuccessSr _self;
  final $Res Function(HomeSuccessSr) _then;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HomeSuccessSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeSrOpenDetailsSr implements HomeSr {
  const HomeSrOpenDetailsSr(this.request);
  

 final  VendistaRequest request;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSrOpenDetailsSrCopyWith<HomeSrOpenDetailsSr> get copyWith => _$HomeSrOpenDetailsSrCopyWithImpl<HomeSrOpenDetailsSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSrOpenDetailsSr&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'HomeSr.openDetails(request: $request)';
}


}

/// @nodoc
abstract mixin class $HomeSrOpenDetailsSrCopyWith<$Res> implements $HomeSrCopyWith<$Res> {
  factory $HomeSrOpenDetailsSrCopyWith(HomeSrOpenDetailsSr value, $Res Function(HomeSrOpenDetailsSr) _then) = _$HomeSrOpenDetailsSrCopyWithImpl;
@useResult
$Res call({
 VendistaRequest request
});


$VendistaRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$HomeSrOpenDetailsSrCopyWithImpl<$Res>
    implements $HomeSrOpenDetailsSrCopyWith<$Res> {
  _$HomeSrOpenDetailsSrCopyWithImpl(this._self, this._then);

  final HomeSrOpenDetailsSr _self;
  final $Res Function(HomeSrOpenDetailsSr) _then;

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(HomeSrOpenDetailsSr(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as VendistaRequest,
  ));
}

/// Create a copy of HomeSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendistaRequestCopyWith<$Res> get request {
  
  return $VendistaRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on
