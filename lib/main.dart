import 'package:flutter/material.dart';

void main() {
  runApp(RuangBelajarYipyipApp());
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

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Header with Stars and Title
          Container(
            height: MediaQuery.of(context).size.height * 0.3, // Responsive height
            width: double.infinity,
            color: Colors.blue,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Left Star
                Positioned(
                  left: 20,
                  top: 40,
                  child: Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                // Right Star
                Positioned(
                  right: 20,
                  top: 40,
                  child: Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                // Title in the center
                const Text(
                  'RUANG BELAJAR YIPYIP',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Middle Section for Icon/Image
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  'assets/logo.png', // Replace with your image
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
          // Bottom Section with Button
          Container(
            height: MediaQuery.of(context).size.height * 0.2, // Responsive height
            color: Colors.blue,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  'mulai',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
