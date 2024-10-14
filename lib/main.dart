import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const RuangBelajarYipyipApp());
}

class RuangBelajarYipyipApp extends StatelessWidget {
  const RuangBelajarYipyipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruang Belajar Yipyip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
