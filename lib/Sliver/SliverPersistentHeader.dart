import "dart:math";
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
      title: "SliverPersistentHeader",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SliverPersistentHeaderWidgetPractice(),
    );
  }
}

class SliverPersistentHeaderWidgetPractice extends StatelessWidget {
  const SliverPersistentHeaderWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("SliverPersistentHeader"),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliverHeader(
              maxExtent: 250.0,
              minExtent: 100.0,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 50.0,
                  alignment: Alignment.center,
                  color: index.isEven ? Colors.grey : Colors.amberAccent,
                  child: Text("List item : $index"),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

class MySliverHeader extends SliverPersistentHeaderDelegate {
  final double minExtent;
  final double maxExtent;

  MySliverHeader({
    required this.minExtent,
    required this.maxExtent,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(shrinkOffset);
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/Natural_image.jpg", fit: BoxFit.cover),
        Positioned(
          left: 16.0,
          top: 26.0,
          right: 16.0,
          bottom: 16.0,
          child: Opacity(
            opacity: 1.0 - max(0.0, shrinkOffset) / maxExtent,
            child: const Text(
              "Mountains",
              /*style: Theme.of(context)
                  .textTheme
                  // .headline3!
                  .copyWith(color: Colors.black)*/
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
