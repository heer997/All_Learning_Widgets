import "package:flutter/material.dart";

class CircularProgressPractice extends StatelessWidget {
  const CircularProgressPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CircularProgressIndicator widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 100.0),
            CircularProgressIndicator(strokeWidth: 12.0, color: Colors.blue),
            SizedBox(height: 100.0),
            CircularProgressIndicator(
              strokeWidth: 8.0,
              backgroundColor: Colors.brown,
              color: Colors.yellow,
              strokeAlign: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
