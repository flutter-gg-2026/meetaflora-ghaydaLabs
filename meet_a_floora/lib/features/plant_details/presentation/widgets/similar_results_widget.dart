import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:meet_a_flora/core/constants/app_colors.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'package:sizer/sizer.dart';

class SimilarResultsWidget extends StatelessWidget {
  const SimilarResultsWidget({super.key, required this.plant});
  final PlantIdentificationEntity plant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.sh,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: plant.similarImages.length,
        itemBuilder: (context, index) {
          final similarImage = plant.similarImages[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Container(
              width: 55.sw,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.network(
                      similarImage.url,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, url, error) => const Center(
                        child: Icon(Icons.broken_image, size: 40),
                      ),
                    ),

                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withAlpha(102),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 12,
                      left: 12,
                      right: 12,
                      child: GlassContainer.clearGlass(
                        height: 5.sh,
                        width: double.infinity,
                        borderRadius: BorderRadius.circular(12),
                        blur: 8,
                        borderWidth: 0.5,
                        borderColor: Colors.white.withAlpha(77),
                        child: Center(
                          child: Text(
                            'Match: ${(similarImage.similarity * 100).toStringAsFixed(1)}%',
                            style: TextStyle(
                              color: Colors.white.withAlpha(200),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
