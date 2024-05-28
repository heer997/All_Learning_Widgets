import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverAppBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: BasicSliverAppBar(),
    );
  }
}

class BasicSliverAppBar extends StatelessWidget {
  BasicSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200.0,
            title: Text("My App Bar"),
            actions: [
              Icon(Icons.settings),
              SizedBox(width: 12.0),
            ],
          ),
        ],
      ),
    );
  }

  List images = [
    "assets/images/apple.png",
    "assets/images/apple-icon.webp",
    "assets/images/Business_Meeting_photo.jpg",
    "assets/images/facebook.jpg",
    "assets/images/Flutter_Logo.png",
    "assets/images/geeksforgeeks.png",
    "assets/images/google.jpg",
    "assets/images/Lord-Hanuman.jpg",
    "assets/images/Natural_image.jpg",
    "assets/images/part_of_login_screen_Figma_Community.png",
    "assets/images/strawberry.png",
  ];

  Widget buildImages() {
    return SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Image.asset(images[index]);
        },
      ),
    );
  }
}
