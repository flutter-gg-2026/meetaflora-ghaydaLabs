import 'package:get_it/get_it.dart';
import 'package:meet_a_flora/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_a_flora/features/plant_identification/di/plant_identification_di.dart';
import 'package:meet_a_flora/features/plant_details/di/plant_details_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configurePlantIdentification(getIt);
    configurePlantDetails(getIt);
}
