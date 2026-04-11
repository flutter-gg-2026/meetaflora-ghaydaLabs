import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/is_planet_model.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/similar_image_model.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
part 'plant_identification_model.freezed.dart';
part 'plant_identification_model.g.dart';

@freezed
abstract class PlantIdentificationModel with _$PlantIdentificationModel {
  const factory PlantIdentificationModel({
    required String name,
    required String description,
    required double probability,
    required List<SimilarImageModel> similarImages,
    required IsPlanetModel isPlant,
  }) = _PlantIdentificationModel;

  factory PlantIdentificationModel.fromJson(Map<String, Object?> json) =>
      _$PlantIdentificationModelFromJson(json);
}

extension PlantIdentificationModelMapper on PlantIdentificationModel {
  PlantIdentificationEntity toEntity() {
    return PlantIdentificationEntity(
      name: name,
      description: description,
      probability: probability,
      similarImages: similarImages.map((e) => e.toEntity()).toList(),
      isPlant: isPlant.toEntity(),
    );
  }
}
