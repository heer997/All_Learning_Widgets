import "package:flutter/material.dart";

class FirstTabBarPage extends StatelessWidget {
  const FirstTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Text(
          "Tab 1 Content",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),
        ),
      ),
    );
  }
}
