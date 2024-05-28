import "package:flutter/material.dart";

class ClipRRectPractice extends StatelessWidget {
  const ClipRRectPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ClipRRect Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
          child: Image.asset("assets/images/Natural_image.jpg",
              width: 300.0, height: 300.0, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
