import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meet_a_flora/core/constants/app_colors.dart';
import 'package:meet_a_flora/features/plant_details/presentation/widgets/plant_details_card_widget.dart';
import 'package:meet_a_flora/features/plant_details/presentation/widgets/similar_results_widget.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';
import 'package:sizer/sizer.dart';

class PlantDetailsFeatureScreen extends StatelessWidget {
  const PlantDetailsFeatureScreen({super.key, required this.data});
  final Map data;
  @override
  Widget build(BuildContext context) {
    final plant = data["plant"] as PlantIdentificationEntity;
    final image = data["image"] as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plant Details"),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlantDetailsCardWidget(plant: plant, image: image),
              Gap(4.sh),
              Text(
                "Similar Results",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SimilarResultsWidget(plant: plant),
            ],
          ),
        ),
      ),
    );
  }
}
