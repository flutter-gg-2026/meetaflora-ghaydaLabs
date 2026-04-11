import 'dart:io';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:meet_a_flora/core/constants/app_colors.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'package:sizer/sizer.dart';

class PlantDetailsCardWidget extends StatelessWidget {
  const PlantDetailsCardWidget({
    super.key,
    required this.plant,
    required this.image,
  });

  final PlantIdentificationEntity plant;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: kElevationToShadow[2],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.file(
                  File(image),
                  height: 40.sh,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    height: 40.sh,
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, size: 50),
                  ),
                ),
              ),

              GlassContainer.clearGlass(
                height: 15.sh,
                width: double.infinity,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(0),
                ),
                borderWidth: 0,
                blur: 10,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        plant.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          shadows: const [
                            Shadow(blurRadius: 10, color: Colors.black45),
                          ],
                        ),
                      ),
                      Text(
                        'Match: ${(plant.probability * 100).toStringAsFixed(1)}%',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 1.sh),
                Text(
                  plant.description,
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey[700]),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Is it a plant?", style: TextStyle(fontSize: 14.sp)),
                    Text(
                      plant.probability > plant.isPlant.threshold
                          ? "YES"
                          : "NO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: plant.probability > plant.isPlant.threshold
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
