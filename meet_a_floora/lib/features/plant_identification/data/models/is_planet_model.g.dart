// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_planet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IsPlanetModel _$IsPlanetModelFromJson(Map<String, dynamic> json) =>
    _IsPlanetModel(
      probability: (json['probability'] as num).toDouble(),
      threshold: (json['threshold'] as num).toDouble(),
      binary: json['binary'] as bool,
    );

Map<String, dynamic> _$IsPlanetModelToJson(_IsPlanetModel instance) =>
    <String, dynamic>{
      'probability': instance.probability,
      'threshold': instance.threshold,
      'binary': instance.binary,
    };
