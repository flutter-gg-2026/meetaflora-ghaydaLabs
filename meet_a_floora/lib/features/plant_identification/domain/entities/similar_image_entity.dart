import 'package:equatable/equatable.dart';

class SimilarImageEntity extends Equatable {
  final String url;
  final double similarity;

  const SimilarImageEntity({
    required this.url,
    required this.similarity,
  });
  @override
  List<Object?> get props => [
    url,
    similarity,
  ];
}