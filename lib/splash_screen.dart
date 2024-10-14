import 'package:flutter/material.dart';
import 'shape_learning_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Header with Stars and Title
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
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
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
          // Bottom Section with Button
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShapeLearningPage(),
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
