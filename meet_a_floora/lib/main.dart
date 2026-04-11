import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'core/setup.dart';
import 'core/theme/app_theme.dart';
import 'core/di/configure_dependencies.dart';
import 'core/navigation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  await configureDependencies();

  runApp(
   MainApp(),
    
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          // themeMode: state.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: true,
        );
      },
    );
  }
}

