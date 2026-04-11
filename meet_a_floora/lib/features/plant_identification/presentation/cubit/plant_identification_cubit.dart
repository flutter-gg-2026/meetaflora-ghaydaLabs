import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/plant_identification/domain/use_cases/plant_identification_use_case.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_state.dart';

class PlantIdentificationCubit extends Cubit<PlantIdentificationState> {
  final PlantIdentificationUseCase _plantIdentificationUseCase;

  PlantIdentificationCubit(
    this._plantIdentificationUseCase
    ) : super(PlantIdentificationInitialState());

  Future<void> getPlantIdentificationMethod(String image) async {
    emit(PlantIdentificationLoadingState());

    final result = await _plantIdentificationUseCase.getPlantIdentification(image);
    result.fold(
      (onLeft) {
       emit(PlantIdentificationErrorState(message: onLeft.message));
      },
      (onRight) {
       emit(PlantIdentificationSuccessState(plant: onRight));
      },
    );
  }

}


