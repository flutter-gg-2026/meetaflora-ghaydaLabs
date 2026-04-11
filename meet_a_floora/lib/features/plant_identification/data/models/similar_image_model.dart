import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/similar_image_entity.dart';
part 'similar_image_model.freezed.dart';
part 'similar_image_model.g.dart';

@freezed
abstract class SimilarImageModel with _$SimilarImageModel {
  const factory SimilarImageModel({
    required final String url,
    required final double similarity,
  }) = _SimilarImageModel;

  factory SimilarImageModel.fromJson(Map<String, Object?> json) =>
      _$SimilarImageModelFromJson(json);
}

extension SimilarImageModelMapper on SimilarImageModel {
  SimilarImageEntity toEntity() {
    return SimilarImageEntity(url: url, similarity: similarity);
  }
}
