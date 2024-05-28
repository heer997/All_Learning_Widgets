import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverGrid and SliverList",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SliverWidgetPractice(),
    );
  }
}

class SliverWidgetPractice extends StatelessWidget {
  const SliverWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Sliver Widget"),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.orange,
            floating: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Basic Slivers"),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              Container(color: Colors.green),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
            ]),
            itemExtent: 50.0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 50.0,
                  alignment: Alignment.center,
                  color: Colors.purple[100 * (index % 9)],
                  child: Text("Purple $index"),
                );
              },
              childCount: 20,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.green[100 * (index % 9)],
                  child: Text("Grid item $index"),
                );
              },
              childCount: 30,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              childAspectRatio: 2,
            ),
          ),
        ],
      ),
    );
  }
}
