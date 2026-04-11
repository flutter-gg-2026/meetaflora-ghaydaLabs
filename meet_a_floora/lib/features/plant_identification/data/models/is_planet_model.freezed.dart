// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_planet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IsPlanetModel {

 double get probability; double get threshold; bool get binary;
/// Create a copy of IsPlanetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsPlanetModelCopyWith<IsPlanetModel> get copyWith => _$IsPlanetModelCopyWithImpl<IsPlanetModel>(this as IsPlanetModel, _$identity);

  /// Serializes this IsPlanetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsPlanetModel&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.threshold, threshold) || other.threshold == threshold)&&(identical(other.binary, binary) || other.binary == binary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability,threshold,binary);

@override
String toString() {
  return 'IsPlanetModel(probability: $probability, threshold: $threshold, binary: $binary)';
}


}

/// @nodoc
abstract mixin class $IsPlanetModelCopyWith<$Res>  {
  factory $IsPlanetModelCopyWith(IsPlanetModel value, $Res Function(IsPlanetModel) _then) = _$IsPlanetModelCopyWithImpl;
@useResult
$Res call({
 double probability, double threshold, bool binary
});




}
/// @nodoc
class _$IsPlanetModelCopyWithImpl<$Res>
    implements $IsPlanetModelCopyWith<$Res> {
  _$IsPlanetModelCopyWithImpl(this._self, this._then);

  final IsPlanetModel _self;
  final $Res Function(IsPlanetModel) _then;

/// Create a copy of IsPlanetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? probability = null,Object? threshold = null,Object? binary = null,}) {
  return _then(_self.copyWith(
probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,threshold: null == threshold ? _self.threshold : threshold // ignore: cast_nullable_to_non_nullable
as double,binary: null == binary ? _self.binary : binary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IsPlanetModel].
extension IsPlanetModelPatterns on IsPlanetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IsPlanetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IsPlanetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IsPlanetModel value)  $default,){
final _that = this;
switch (_that) {
case _IsPlanetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IsPlanetModel value)?  $default,){
final _that = this;
switch (_that) {
case _IsPlanetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double probability,  double threshold,  bool binary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IsPlanetModel() when $default != null:
return $default(_that.probability,_that.threshold,_that.binary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double probability,  double threshold,  bool binary)  $default,) {final _that = this;
switch (_that) {
case _IsPlanetModel():
return $default(_that.probability,_that.threshold,_that.binary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double probability,  double threshold,  bool binary)?  $default,) {final _that = this;
switch (_that) {
case _IsPlanetModel() when $default != null:
return $default(_that.probability,_that.threshold,_that.binary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IsPlanetModel implements IsPlanetModel {
  const _IsPlanetModel({required this.probability, required this.threshold, required this.binary});
  factory _IsPlanetModel.fromJson(Map<String, dynamic> json) => _$IsPlanetModelFromJson(json);

@override final  double probability;
@override final  double threshold;
@override final  bool binary;

/// Create a copy of IsPlanetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IsPlanetModelCopyWith<_IsPlanetModel> get copyWith => __$IsPlanetModelCopyWithImpl<_IsPlanetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IsPlanetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IsPlanetModel&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.threshold, threshold) || other.threshold == threshold)&&(identical(other.binary, binary) || other.binary == binary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability,threshold,binary);

@override
String toString() {
  return 'IsPlanetModel(probability: $probability, threshold: $threshold, binary: $binary)';
}


}

/// @nodoc
abstract mixin class _$IsPlanetModelCopyWith<$Res> implements $IsPlanetModelCopyWith<$Res> {
  factory _$IsPlanetModelCopyWith(_IsPlanetModel value, $Res Function(_IsPlanetModel) _then) = __$IsPlanetModelCopyWithImpl;
@override @useResult
$Res call({
 double probability, double threshold, bool binary
});




}
/// @nodoc
class __$IsPlanetModelCopyWithImpl<$Res>
    implements _$IsPlanetModelCopyWith<$Res> {
  __$IsPlanetModelCopyWithImpl(this._self, this._then);

  final _IsPlanetModel _self;
  final $Res Function(_IsPlanetModel) _then;

/// Create a copy of IsPlanetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? probability = null,Object? threshold = null,Object? binary = null,}) {
  return _then(_IsPlanetModel(
probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,threshold: null == threshold ? _self.threshold : threshold // ignore: cast_nullable_to_non_nullable
as double,binary: null == binary ? _self.binary : binary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
