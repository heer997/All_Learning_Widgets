import "package:flutter/material.dart";

class SecondTabBarPage extends StatelessWidget {
  const SecondTabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          "Tab 2 Content",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
      ),
    );
  }
}
