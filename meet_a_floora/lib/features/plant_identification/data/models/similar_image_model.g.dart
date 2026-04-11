// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimilarImageModel _$SimilarImageModelFromJson(Map<String, dynamic> json) =>
    _SimilarImageModel(
      url: json['url'] as String,
      similarity: (json['similarity'] as num).toDouble(),
    );

Map<String, dynamic> _$SimilarImageModelToJson(_SimilarImageModel instance) =>
    <String, dynamic>{'url': instance.url, 'similarity': instance.similarity};
