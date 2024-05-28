import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CustomScrollView_SliverAppBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CustomScrollViewSliverAppBarWidgetPracticeTutorial(),
    );
  }
}

class CustomScrollViewSliverAppBarWidgetPracticeTutorial
    extends StatelessWidget {
  const CustomScrollViewSliverAppBarWidgetPracticeTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 400.0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                "CustomScrollView",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              centerTitle: true,
              // expandedTitleScale: 1.0,
              collapseMode: CollapseMode.parallax,
              background: Image(
                image: AssetImage("assets/images/Natural_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      "Item $index",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
