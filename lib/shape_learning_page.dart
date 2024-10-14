import 'package:flutter/material.dart';
import 'cube_page.dart';
import 'quiz_page.dart';

class ShapeLearningPage extends StatelessWidget {
  const ShapeLearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('selamat belajar!'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildShapeItem(Icons.crop_square, 'kubus', context),
            _buildShapeItem(Icons.view_quilt, 'balok', context),
            _buildShapeItem(Icons.local_drink, 'tabung', context),
            _buildShapeItem(Icons.change_history, 'kerucut', context),
            _buildShapeItem(Icons.sports_soccer, 'bola', context),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
              child: const Text(
                'QUIZ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShapeItem(IconData icon, String label, BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
        ),
        title: Text(
          label,
          style: const TextStyle(fontSize: 20),
        ),
        onTap: () {
          if (label == 'kubus') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CubePage(title: 'KUBUS'),
              ),
            );
          }
        },
      ),
    );
  }
}
