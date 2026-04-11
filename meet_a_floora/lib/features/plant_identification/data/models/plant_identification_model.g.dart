// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_identification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantIdentificationModel _$PlantIdentificationModelFromJson(
  Map<String, dynamic> json,
) => _PlantIdentificationModel(
  name: json['name'] as String,
  description: json['description'] as String,
  probability: (json['probability'] as num).toDouble(),
  similarImages: (json['similarImages'] as List<dynamic>)
      .map((e) => SimilarImageModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  isPlant: IsPlanetModel.fromJson(json['isPlant'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PlantIdentificationModelToJson(
  _PlantIdentificationModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'probability': instance.probability,
  'similarImages': instance.similarImages,
  'isPlant': instance.isPlant,
};
