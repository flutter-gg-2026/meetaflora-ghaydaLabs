import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meet_a_flora/core/constants/app_images.dart';
import 'package:meet_a_flora/core/extensions/context_extensions.dart';
import 'package:meet_a_flora/core/navigation/routers.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_cubit.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/cubit/plant_identification_state.dart';
import 'package:meet_a_flora/features/plant_identification/presentation/widgets/plant_identification_widget.dart';
import 'package:sizer/sizer.dart';

class PlantIdentificationFeatureScreen extends StatelessWidget {
  const PlantIdentificationFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PlantIdentificationCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: BlocConsumer<PlantIdentificationCubit, PlantIdentificationState>(
          listener: (context, state) {
            if (state is PlantIdentificationSuccessState) {
              context.push(
                Routes.plantDetails,
                extra: {
                  "plant": state.plant,
                  "image": cubit.selectedImage?.path,
                },
              );
            }
            if (state is PlantIdentificationErrorState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            final isLoading = state is PlantIdentificationLoadingState;

            return Stack(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(AppImages.logo, height: 20.sh),
                        Gap(2.sh),
                        const Text(
                          'Plantify',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Try it now!', style: TextStyle(fontSize: 18.sp)),
                        Gap(5.sh),

                        PlantIdentificationWidget(
                          text: "Select Image",
                          icon: Icons.image,
                          isLoading: isLoading,
                          onPressed: () async {
                            final picker = ImagePicker();
                            final image = await picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            if (image != null) {
                              cubit.selectedImage = image;
                              final bytes = await image.readAsBytes();
                              if (context.mounted) {
                                context.showSnapTips();
                              }
                              cubit.getPlantIdentificationMethod(
                                base64Encode(bytes),
                              );
                            }
                          },
                        ),

                        Gap(2.sh),

                        PlantIdentificationWidget(
                          text: "Open Camera",
                          icon: Icons.camera_alt,
                          isLoading: isLoading,
                          onPressed: () async {
                            final picker = ImagePicker();
                            final image = await picker.pickImage(
                              source: ImageSource.camera,
                            );
                            if (image != null) {
                              cubit.selectedImage = image;
                              final bytes = await image.readAsBytes();
                              if (context.mounted) {
                                context.showSnapTips();
                              }

                              cubit.getPlantIdentificationMethod(
                                base64Encode(bytes),
                              );
                            }
                          },
                        ),

                        Gap(10.sh),
                        const Text('by Ghayda Khalid'),
                      ],
                    ),
                  ),
                ),

                if (isLoading)
                  Positioned.fill(
                    child: Container(
                      color: Colors.black26,
                      child: BackdropFilter(
                        filter: ColorFilter.mode(
                          Colors.black.withAlpha(1),
                          BlendMode.darken,
                        ),
                        child: Center(
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const CircularProgressIndicator(
                                    color: Colors.green,
                                  ),
                                  Gap(2.sh),
                                  const Text(
                                    "Analyzing Plant...",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
