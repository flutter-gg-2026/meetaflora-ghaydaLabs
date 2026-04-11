import 'package:equatable/equatable.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';

abstract class PlantIdentificationState extends Equatable {
  const PlantIdentificationState();

  @override
  List<Object?> get props => [];
}

class PlantIdentificationInitialState extends PlantIdentificationState {}

class PlantIdentificationLoadingState extends PlantIdentificationState {}

class PlantIdentificationSuccessState extends PlantIdentificationState {
  final PlantIdentificationEntity plant;

  const PlantIdentificationSuccessState({required this.plant});

  @override
  List<Object?> get props => [plant];
}

class PlantIdentificationErrorState extends PlantIdentificationState {
  final String message;
  const PlantIdentificationErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
