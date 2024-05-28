import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverAppBar with TabBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: SliverAppBarWithTabBarPracticeTutorial(),
    );
  }
}

class SliverAppBarWithTabBarPracticeTutorial extends StatelessWidget {
  SliverAppBarWithTabBarPracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(
                title: Text(
                  "SliverAppBar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                pinned: true,
                bottom: TabBar(
                  labelStyle: TextStyle(color: Colors.white),
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.map),
                      text: "Text 1",
                    ),
                    Tab(icon: Icon(Icons.portrait), text: "Text 2"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              buildImages(),
              buildImages(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImages() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: Image.asset(imagesList[index], fit: BoxFit.cover),
        );
      },
      itemCount: imagesList.length,
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
