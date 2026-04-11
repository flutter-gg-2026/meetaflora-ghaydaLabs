import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meet_a_flora/core/navigation/routers.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_cubit.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_state.dart';

class PlantIdentificationFeatureScreen extends StatelessWidget {
  const PlantIdentificationFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlantIdentificationCubit>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: BlocListener<PlantIdentificationCubit, PlantIdentificationState>(
            listener: (context, state) {
              if (state is PlantIdentificationSuccessState) {
                // Navigate to details page
                context.push(Routes.plantDetails, extra: state.plant);
              }
            },
            child: Column(
              children: [
                Text('Please select an image to identify the plant.'),
        
                // TODO: MAKE IT AS CUSTOM WIDGET !!
                ElevatedButton(
                  onPressed: () async {
                    final picker = ImagePicker();
                    final image = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
        
                    if (image != null) {
                      final file = File(image.path);
        
                      // setState(() {
        
                      //   selectedImage = file;
                      // });
                      final bytes = await image.readAsBytes();
                      final base64Image = base64Encode(bytes);
        
                      cubit.getPlantIdentificationMethod(base64Image);
                    }
                  },
                  child: Text('Select Image'),
                ),
        
                ElevatedButton(
                  onPressed: () async {
                    final picker = ImagePicker();
                    final image = await picker.pickImage(
                      source: ImageSource.camera,
                    );
        
                    if (image != null) {
                      final bytes = await image.readAsBytes();
                      final base64Image = base64Encode(bytes);
        
                      cubit.getPlantIdentificationMethod(base64Image);
                    }
                  },
                  child: Text('Open Camera'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
