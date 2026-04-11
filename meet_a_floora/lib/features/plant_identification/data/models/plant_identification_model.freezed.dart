// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_identification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantIdentificationModel {

 String get name; String get description; double get probability; List<SimilarImageModel> get similarImages; IsPlanetModel get isPlant;
/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantIdentificationModelCopyWith<PlantIdentificationModel> get copyWith => _$PlantIdentificationModelCopyWithImpl<PlantIdentificationModel>(this as PlantIdentificationModel, _$identity);

  /// Serializes this PlantIdentificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantIdentificationModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.probability, probability) || other.probability == probability)&&const DeepCollectionEquality().equals(other.similarImages, similarImages)&&(identical(other.isPlant, isPlant) || other.isPlant == isPlant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,probability,const DeepCollectionEquality().hash(similarImages),isPlant);

@override
String toString() {
  return 'PlantIdentificationModel(name: $name, description: $description, probability: $probability, similarImages: $similarImages, isPlant: $isPlant)';
}


}

/// @nodoc
abstract mixin class $PlantIdentificationModelCopyWith<$Res>  {
  factory $PlantIdentificationModelCopyWith(PlantIdentificationModel value, $Res Function(PlantIdentificationModel) _then) = _$PlantIdentificationModelCopyWithImpl;
@useResult
$Res call({
 String name, String description, double probability, List<SimilarImageModel> similarImages, IsPlanetModel isPlant
});


$IsPlanetModelCopyWith<$Res> get isPlant;

}
/// @nodoc
class _$PlantIdentificationModelCopyWithImpl<$Res>
    implements $PlantIdentificationModelCopyWith<$Res> {
  _$PlantIdentificationModelCopyWithImpl(this._self, this._then);

  final PlantIdentificationModel _self;
  final $Res Function(PlantIdentificationModel) _then;

/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? probability = null,Object? similarImages = null,Object? isPlant = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,similarImages: null == similarImages ? _self.similarImages : similarImages // ignore: cast_nullable_to_non_nullable
as List<SimilarImageModel>,isPlant: null == isPlant ? _self.isPlant : isPlant // ignore: cast_nullable_to_non_nullable
as IsPlanetModel,
  ));
}
/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IsPlanetModelCopyWith<$Res> get isPlant {
  
  return $IsPlanetModelCopyWith<$Res>(_self.isPlant, (value) {
    return _then(_self.copyWith(isPlant: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlantIdentificationModel].
extension PlantIdentificationModelPatterns on PlantIdentificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantIdentificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantIdentificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantIdentificationModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantIdentificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantIdentificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantIdentificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  double probability,  List<SimilarImageModel> similarImages,  IsPlanetModel isPlant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantIdentificationModel() when $default != null:
return $default(_that.name,_that.description,_that.probability,_that.similarImages,_that.isPlant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  double probability,  List<SimilarImageModel> similarImages,  IsPlanetModel isPlant)  $default,) {final _that = this;
switch (_that) {
case _PlantIdentificationModel():
return $default(_that.name,_that.description,_that.probability,_that.similarImages,_that.isPlant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  double probability,  List<SimilarImageModel> similarImages,  IsPlanetModel isPlant)?  $default,) {final _that = this;
switch (_that) {
case _PlantIdentificationModel() when $default != null:
return $default(_that.name,_that.description,_that.probability,_that.similarImages,_that.isPlant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantIdentificationModel implements PlantIdentificationModel {
  const _PlantIdentificationModel({required this.name, required this.description, required this.probability, required final  List<SimilarImageModel> similarImages, required this.isPlant}): _similarImages = similarImages;
  factory _PlantIdentificationModel.fromJson(Map<String, dynamic> json) => _$PlantIdentificationModelFromJson(json);

@override final  String name;
@override final  String description;
@override final  double probability;
 final  List<SimilarImageModel> _similarImages;
@override List<SimilarImageModel> get similarImages {
  if (_similarImages is EqualUnmodifiableListView) return _similarImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similarImages);
}

@override final  IsPlanetModel isPlant;

/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantIdentificationModelCopyWith<_PlantIdentificationModel> get copyWith => __$PlantIdentificationModelCopyWithImpl<_PlantIdentificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantIdentificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantIdentificationModel&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.probability, probability) || other.probability == probability)&&const DeepCollectionEquality().equals(other._similarImages, _similarImages)&&(identical(other.isPlant, isPlant) || other.isPlant == isPlant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,probability,const DeepCollectionEquality().hash(_similarImages),isPlant);

@override
String toString() {
  return 'PlantIdentificationModel(name: $name, description: $description, probability: $probability, similarImages: $similarImages, isPlant: $isPlant)';
}


}

/// @nodoc
abstract mixin class _$PlantIdentificationModelCopyWith<$Res> implements $PlantIdentificationModelCopyWith<$Res> {
  factory _$PlantIdentificationModelCopyWith(_PlantIdentificationModel value, $Res Function(_PlantIdentificationModel) _then) = __$PlantIdentificationModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, double probability, List<SimilarImageModel> similarImages, IsPlanetModel isPlant
});


@override $IsPlanetModelCopyWith<$Res> get isPlant;

}
/// @nodoc
class __$PlantIdentificationModelCopyWithImpl<$Res>
    implements _$PlantIdentificationModelCopyWith<$Res> {
  __$PlantIdentificationModelCopyWithImpl(this._self, this._then);

  final _PlantIdentificationModel _self;
  final $Res Function(_PlantIdentificationModel) _then;

/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? probability = null,Object? similarImages = null,Object? isPlant = null,}) {
  return _then(_PlantIdentificationModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,similarImages: null == similarImages ? _self._similarImages : similarImages // ignore: cast_nullable_to_non_nullable
as List<SimilarImageModel>,isPlant: null == isPlant ? _self.isPlant : isPlant // ignore: cast_nullable_to_non_nullable
as IsPlanetModel,
  ));
}

/// Create a copy of PlantIdentificationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IsPlanetModelCopyWith<$Res> get isPlant {
  
  return $IsPlanetModelCopyWith<$Res>(_self.isPlant, (value) {
    return _then(_self.copyWith(isPlant: value));
  });
}
}

// dart format on
