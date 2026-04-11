// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'similar_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimilarImageModel {

 String get url; double get similarity;
/// Create a copy of SimilarImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimilarImageModelCopyWith<SimilarImageModel> get copyWith => _$SimilarImageModelCopyWithImpl<SimilarImageModel>(this as SimilarImageModel, _$identity);

  /// Serializes this SimilarImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimilarImageModel&&(identical(other.url, url) || other.url == url)&&(identical(other.similarity, similarity) || other.similarity == similarity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,similarity);

@override
String toString() {
  return 'SimilarImageModel(url: $url, similarity: $similarity)';
}


}

/// @nodoc
abstract mixin class $SimilarImageModelCopyWith<$Res>  {
  factory $SimilarImageModelCopyWith(SimilarImageModel value, $Res Function(SimilarImageModel) _then) = _$SimilarImageModelCopyWithImpl;
@useResult
$Res call({
 String url, double similarity
});




}
/// @nodoc
class _$SimilarImageModelCopyWithImpl<$Res>
    implements $SimilarImageModelCopyWith<$Res> {
  _$SimilarImageModelCopyWithImpl(this._self, this._then);

  final SimilarImageModel _self;
  final $Res Function(SimilarImageModel) _then;

/// Create a copy of SimilarImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? similarity = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,similarity: null == similarity ? _self.similarity : similarity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SimilarImageModel].
extension SimilarImageModelPatterns on SimilarImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimilarImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimilarImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimilarImageModel value)  $default,){
final _that = this;
switch (_that) {
case _SimilarImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimilarImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _SimilarImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  double similarity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimilarImageModel() when $default != null:
return $default(_that.url,_that.similarity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  double similarity)  $default,) {final _that = this;
switch (_that) {
case _SimilarImageModel():
return $default(_that.url,_that.similarity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  double similarity)?  $default,) {final _that = this;
switch (_that) {
case _SimilarImageModel() when $default != null:
return $default(_that.url,_that.similarity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimilarImageModel implements SimilarImageModel {
  const _SimilarImageModel({required this.url, required this.similarity});
  factory _SimilarImageModel.fromJson(Map<String, dynamic> json) => _$SimilarImageModelFromJson(json);

@override final  String url;
@override final  double similarity;

/// Create a copy of SimilarImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimilarImageModelCopyWith<_SimilarImageModel> get copyWith => __$SimilarImageModelCopyWithImpl<_SimilarImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimilarImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimilarImageModel&&(identical(other.url, url) || other.url == url)&&(identical(other.similarity, similarity) || other.similarity == similarity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,similarity);

@override
String toString() {
  return 'SimilarImageModel(url: $url, similarity: $similarity)';
}


}

/// @nodoc
abstract mixin class _$SimilarImageModelCopyWith<$Res> implements $SimilarImageModelCopyWith<$Res> {
  factory _$SimilarImageModelCopyWith(_SimilarImageModel value, $Res Function(_SimilarImageModel) _then) = __$SimilarImageModelCopyWithImpl;
@override @useResult
$Res call({
 String url, double similarity
});




}
/// @nodoc
class __$SimilarImageModelCopyWithImpl<$Res>
    implements _$SimilarImageModelCopyWith<$Res> {
  __$SimilarImageModelCopyWithImpl(this._self, this._then);

  final _SimilarImageModel _self;
  final $Res Function(_SimilarImageModel) _then;

/// Create a copy of SimilarImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? similarity = null,}) {
  return _then(_SimilarImageModel(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,similarity: null == similarity ? _self.similarity : similarity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
