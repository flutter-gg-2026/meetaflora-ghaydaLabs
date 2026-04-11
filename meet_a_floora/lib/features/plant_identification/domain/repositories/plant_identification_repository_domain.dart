import 'package:fpdart/fpdart.dart';
import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';

abstract class PlantIdentificationRepositoryDomain {
    Future<Either<Failure, PlantIdentificationEntity>> getPlantIdentification(String image);
}
