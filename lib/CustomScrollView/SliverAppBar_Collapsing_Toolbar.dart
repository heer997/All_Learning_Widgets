import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverAppBar Collapsing Toolbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: SliverAppBarCollapsingToolbarPracticeTutorial(),
    );
  }
}

class SliverAppBarCollapsingToolbarPracticeTutorial extends StatelessWidget {
  SliverAppBarCollapsingToolbarPracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/Natural_image.jpg",
                  fit: BoxFit.cover),
              title: const Text(
                "Flexible Title",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              centerTitle: true,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            actions: const [
              Icon(Icons.settings),
              SizedBox(width: 12.0),
            ],
          ),
          buildImages(),
        ],
      ),
    );
  }

  Widget buildImages() {
    return SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(imagesList[index], fit: BoxFit.cover),
          );
        },
        primary: false,
        shrinkWrap: true,
        itemCount: imagesList.length,
      ),
    );
  }

  List imagesList = [
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
}
