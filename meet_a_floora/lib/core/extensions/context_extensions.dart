import 'package:flutter/material.dart';
import 'package:meet_a_flora/core/constants/app_images.dart';

extension ContextExtensions on BuildContext {

  void showSnapTips() {
    showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 12),
          
                Text(
                  "Snap tips",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
          
                SizedBox(height: 20),
          
                buildRow(
                  doImage: AppImages.do1,
                  dontImage: AppImages.dont1,
                  text: "Ensure the entire plant is in the frame.",
                ),
          
                buildRow(
                  doImage: AppImages.do2,
                  dontImage: AppImages.dont2,
                  text: "Capture one plant at a time.",
                ),
          
                buildRow(
                  doImage: AppImages.do3,
                  dontImage: AppImages.dont3,
                  text: "",
                ),
          
                SizedBox(height: 20),
          
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text("Got it"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildRow({
  required String doImage,
  required String dontImage,
  required String text,
}) {
  return Column(
    children: [
      Row(
        children: [
          Expanded(child: buildImageBox(doImage, true)),
          SizedBox(width: 10),
          Expanded(child: buildImageBox(dontImage, false)),
        ],
      ),
      if (text.isNotEmpty) ...[
        SizedBox(height: 8),
        Text(text, textAlign: TextAlign.center),
      ],
      SizedBox(height: 16),
    ],
  );
}

Widget buildImageBox(String path, bool isDo) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          path,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(height: 6),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isDo ? Icons.check_circle : Icons.cancel,
            color: isDo ? Colors.green : Colors.red,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(isDo ? "DO's" : "DON'Ts"),
        ],
      )
    ],
  );
}
