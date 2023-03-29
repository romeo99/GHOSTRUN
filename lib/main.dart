import 'package:flutter/material.dart';
import 'package:ghostrun/screens/splash/splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GHOSTRUN',
      themeMode: ThemeMode.dark,
      theme: ThemeData(fontFamily: 'Ubuntu', primarySwatch: Colors.green),
      home: const SplashScreen(),
    );
  }
}
