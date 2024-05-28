import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DecoratedBox",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const DecoratedBoxPractice(),
    );
  }
}

class DecoratedBoxPractice extends StatelessWidget {
  const DecoratedBoxPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DecoratedBox Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
