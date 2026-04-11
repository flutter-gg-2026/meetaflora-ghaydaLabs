import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'package:meet_a_flora/features/plant_identification/domain/repositories/plant_identification_repository_domain.dart';

@lazySingleton
class PlantIdentificationUseCase {
  final PlantIdentificationRepositoryDomain _repositoryData;

  PlantIdentificationUseCase(this._repositoryData);

  Future<Either<Failure, PlantIdentificationEntity>> getPlantIdentification(
    String image,
  ) async {
    return _repositoryData.getPlantIdentification(image);
  }
}
