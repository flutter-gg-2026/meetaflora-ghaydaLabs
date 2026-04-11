import 'package:equatable/equatable.dart';

class IsPlantEntity extends Equatable {
  final double probability;
  final double threshold;
  final bool binary;

  const IsPlantEntity({
    required this.probability,
    required this.threshold,
    required this.binary,
  });
  @override
  List<Object?> get props => [
    probability,
    threshold,
    binary,
  ];
}