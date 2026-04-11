import 'package:flutter/material.dart';
import 'package:meet_a_flora/features/plant_identification/domain/entities/plant_identification_entity.dart';

class PlantDetailsFeatureScreen extends StatelessWidget {
  final PlantIdentificationEntity plant;

  const PlantDetailsFeatureScreen({super.key, required this.plant});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Plant Details")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Plant Name: ${plant.name}'),
          Text('Description: ${plant.description}'),
          Text(
            'Is Plant: ${plant.probability > plant.isPlant.threshold ? "Yes" : "No"}',
          ),
          Text('Is Plant: ${plant.probability * 100}'),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(plant.similarImages[index].url),
                  title: Text(
                    'Similarity: ${plant.similarImages[index].similarity * 100}',
                  ),
                );
              },
              itemCount: plant.similarImages.length,
            ),
          ),
        ],
      ),
    );
  }
}
