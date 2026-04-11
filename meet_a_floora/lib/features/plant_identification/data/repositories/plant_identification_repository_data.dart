
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:meet_a_flora/core/errors/failure.dart';
import 'package:meet_a_flora/core/errors/failure_exceptions.dart';
import 'package:meet_a_flora/features/plant_identification/data/datasources/plant_identification_remote_data_source.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/plant_identification_model.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'package:meet_a_flora/features/plant_identification/domain/repositories/plant_identification_repository_domain.dart';

@LazySingleton(as: PlantIdentificationRepositoryDomain)
class PlantIdentificationRepositoryData implements PlantIdentificationRepositoryDomain{
  final BasePlantIdentificationRemoteDataSource remoteDataSource;


  PlantIdentificationRepositoryData(this.remoteDataSource);

@override
  Future<Either<Failure, PlantIdentificationEntity>> getPlantIdentification(String image) async {
    try {
      final response = await remoteDataSource.getPlantIdentification(image);
      return Either.right(response.toEntity());
    } catch (error) {
      return Either.left(FailureExceptions.getException(error));
    }
  }
}

 
