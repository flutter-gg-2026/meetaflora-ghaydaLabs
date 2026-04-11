import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/core/errors/failure_exceptions.dart';
import 'package:meet_a_flora/core/network/dio_client.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/is_planet_model.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/plant_identification_model.dart';
import 'package:meet_a_flora/features/plant_identification/data/models/similar_image_model.dart';

abstract class BasePlantIdentificationRemoteDataSource {
  Future<PlantIdentificationModel> getPlantIdentification(String base64Image);
}

@LazySingleton(as: BasePlantIdentificationRemoteDataSource)
class PlantIdentificationRemoteDataSource
    implements BasePlantIdentificationRemoteDataSource {
  final DioClient _dio;

  PlantIdentificationRemoteDataSource(this._dio);

  @override
  Future<PlantIdentificationModel> getPlantIdentification(
    String base64Image,
  ) async {
    try {
      final response = await _dio.createIdentificationMethod(
        base64Image: base64Image,
      );
      final suggestions =
          response['result']['classification']['suggestions'] as List;

      final suggestion = suggestions.first;

      final name = suggestion['name'];
      final probability = suggestion['probability'] * 100;

      final similarImage = (suggestion['similar_images'] as List)
          .map(
            (img) => SimilarImageModel(
              url: img['url'],
              similarity: (img['similarity'] ?? 0).toDouble(),
            ),
          )
          .toList();

      final isPlant = response['result']['classification']['is_plant'];

      return PlantIdentificationModel(
        name: name,
        description:
            "Identified as $name with ${(probability).toStringAsFixed(1)}% confidence. "
            "This plant is part of a botanical classification system.",
        probability: probability,
        similarImages: similarImage,
        isPlant: IsPlanetModel(
          probability: (isPlant?['probability'] ?? 0.0).toDouble(),
          threshold: (isPlant?['threshold'] ?? 0.0).toDouble(),
          binary: isPlant?['binary'] ?? false,
        ),
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
