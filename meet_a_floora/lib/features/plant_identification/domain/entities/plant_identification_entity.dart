import 'package:equatable/equatable.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/is_planet_entity.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/similar_image_entity.dart';

class PlantIdentificationEntity extends Equatable {
  final String name;
  final String description;
  final double probability;
  final List<SimilarImageEntity> similarImages;
  final IsPlantEntity isPlant;

  const PlantIdentificationEntity({
    required this.name,
    required this.description,
    required this.probability,
    required this.similarImages,
    required this.isPlant,
  });

  @override
  List<Object?> get props => [
    name,
    description,
    probability,
    similarImages,
    isPlant,
  ];
}
