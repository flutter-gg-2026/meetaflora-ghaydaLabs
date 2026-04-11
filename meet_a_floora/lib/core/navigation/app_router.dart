import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/pages/plant_identification_feature_screen.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_cubit.dart';
import 'package:meet_a_flora/features/plant_details/presentation/pages/plant_details_feature_screen.dart';



class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.plantIdentification,
    routes: [
      // GoRoute(
      //   path: Routes.splash,
      //   builder: (context, state) {
      //     return Scaffold(body: Center(child: Text("splash screen")));
      //   }, // SplashScreen
      // ),
    
  GoRoute(
    path: Routes.plantIdentification,
    builder: (context, state) => BlocProvider(
          create: (context) => PlantIdentificationCubit(GetIt.I.get()),
          child: const PlantIdentificationFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.plantDetails,
    builder: (context, state) { final plant =
              state.extra as PlantIdentificationEntity; 
     return PlantDetailsFeatureScreen(plant: plant);
    }
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
