import 'package:flutter/material.dart';
import 'package:todolist_app/logic/shared_preferences_class.dart';
import 'package:todolist_app/screens/home_screen/home_screen.dart';
import 'package:todolist_app/screens/splash_screen/splash_screen.dart';
import 'package:todolist_app/util/color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondary),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/HomeScreen': (context) => const HomeScreen(),
      },
    );
  }
}
