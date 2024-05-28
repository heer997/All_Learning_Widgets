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
      title: "SliverAppBarWidget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SliverAppBarCollapsingToolbarPractice(),
    );
  }
}

class SliverAppBarCollapsingToolbarPractice extends StatelessWidget {
  const SliverAppBarCollapsingToolbarPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            floating: true,
            title: const Text(
              "Lord Hanuman",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset(AssetsProperty.lordhanuman, fit: BoxFit.cover),
            ),
          ),

          /// Below is other UI Code
          // SliverFillRemaining(
          //   child: ListView.builder(
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: Text(
          //           "Text ${index + 1}",
          //           style: const TextStyle(
          //               fontWeight: FontWeight.bold, fontSize: 20.0),
          //         ),
          //       );
          //     },
          //     itemCount: 20,
          //   ),
          // ),

          /// Below is separate UI Code
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Text(
                      "Text ${index + 1}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                );
              },
              childCount: 30,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white, size: 30.0),
      ),
    );
  }
}
