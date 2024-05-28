import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/Assets/assets_images.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Collapsing_Toolbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: CustomSliverAppBarWithCollapsingToolbarWidgetPracticeTutorial(),
    );
  }
}

class CustomSliverAppBarWithCollapsingToolbarWidgetPracticeTutorial
    extends StatelessWidget {
  CustomSliverAppBarWithCollapsingToolbarWidgetPracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 250.0),
            pinned: true,
          ),
          buildImages(),
        ],
      ),
    );
  }

  Widget buildImages() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            child: Image.asset(imagesList[index], fit: BoxFit.cover),
          );
        },
        childCount: imagesList.length,
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

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  CustomSliverAppBarDelegate({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = 60.0;
    final top = expandedHeight - shrinkOffset - size / 1;

    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          left: 20.0,
          right: 20.0,
          child: buildFloating(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) {
    return shrinkOffset / expandedHeight;
  }

  double disappear(double shrinkOffset) {
    return 1 - shrinkOffset / expandedHeight;
  }

  Widget buildAppBar(double shrinkOffset) {
    return Opacity(
      opacity: appear(shrinkOffset),
      child: AppBar(
        title: const Text(
          "AppBar",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget buildBackground(double shrinkOffset) {
    return Opacity(
      opacity: disappear(shrinkOffset),
      child: Image.asset(AssetsProperty.naturalimage, fit: BoxFit.cover),
    );
  }

  Widget buildFloating(double shrinkOffset) {
    return Opacity(
      opacity: disappear(shrinkOffset),
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: buildButton(text: "Share", icon: Icons.share),
            ),
            Expanded(
              child: buildButton(text: "Like", icon: Icons.thumb_up),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({required String text, required IconData icon}) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(width: 12.0),
          Text(
            text,
            style: const TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
