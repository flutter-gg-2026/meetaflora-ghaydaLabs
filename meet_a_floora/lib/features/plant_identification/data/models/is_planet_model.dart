import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/is_planet_entity.dart';
part 'is_planet_model.freezed.dart';
part 'is_planet_model.g.dart';

@freezed
abstract class IsPlanetModel with _$IsPlanetModel {
  const factory IsPlanetModel({
    required final double probability,
    required final double threshold,
    required final bool binary,
  }) = _IsPlanetModel;

  factory IsPlanetModel.fromJson(Map<String, Object?> json) =>
      _$IsPlanetModelFromJson(json);
}

extension PlantIdentificationModelMapper on IsPlanetModel {
  IsPlantEntity toEntity() {
    return IsPlantEntity(
      probability: probability,
      threshold: threshold,
      binary: binary,
    );
  }
}
