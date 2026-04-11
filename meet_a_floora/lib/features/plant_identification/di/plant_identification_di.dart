import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'plant_identification_di.config.dart'; 

@InjectableInit(
  initializerName: 'initPlantIdentification',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/plant_identification'],
)
void configurePlantIdentification(GetIt getIt) {
  getIt.initPlantIdentification();
}
