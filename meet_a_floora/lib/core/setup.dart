import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> setup() async {
  await dotenv.load(fileName: ".env");
}
