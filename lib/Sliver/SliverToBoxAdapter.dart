import "dart:math";

import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverToBoxAdapter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: SliverToBoxAdapterWidgetPractice(),
    );
  }
}

class SliverToBoxAdapterWidgetPractice extends StatelessWidget {
  const SliverToBoxAdapterWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("SliverToBoxAdapter"),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverHeaderTwo(
              maxExtent: 250.0,
              minExtent: 100.0,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "If you want to display a single widget inside sliver then you can use this."
              " This will adapt the size according to its child. "
              "If you want to use more than one widget then consider using SliverList,"
              " SliverFixedExtentList, SliverPrototypeExtentList, or SliverGrid, "
              "which are more efficient because they instantiate only those children "
              "that are actually visible through the scroll view's viewport. If you want more"
              " control over SliverAppBar or you want to make your own custom header,"
              " you can use SliverPersistentHeader."
              "SliverPersientHeader is the widget that is used under the hood in the SliverAppBar"
              " in order to implement shrinking and growing effects."
              "SliverPersistentHeader creates sliver whose size varies when it is scrolled."
              "It has 3 parameters -"
              "1 - pinned - Stick the Header at the top."
              "2 - floating - Header will immediately grow again if the user scrolls down."
              "3 - delegate - It takes a class which extends SliverPersistentHeaderDelegate."
              " We have to override build method which has 3 arguments -"
              "context, shrinkOffset, overlapsContent."
              "The context is the BuildContext of the sliver."
              "The overlapsContent argument is true if subsequent slivers (if any) will be rendered"
              " beneath this one, and false if the sliver will not have any contents below it."
              "The shrinkOffset is a distance from maxExtent towards minExtent representing the current"
              " amount by which the sliver has been shrunk. It is useful when you want to update"
              " any widget property with respect to the scrollOffeset."
              " For example, When user starts scrolling the Text defined in the Header fades away."
              " It's the same as SliverFixedExtentList, the only difference is it uses a prototype list"
              " item instead of a pixel value to define the main axis extent of each item."
              "SliverPrototypeExtentList is more efficient than SliverList because SliverPrototypeExtentList"
              " does not need to lay out its children to obtain their extent along the main axis."
              " It's a little more flexible than SliverFixedExtentList because there's no need"
              " to determine the appropriate item extent in pixels.",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}

class MySliverHeaderTwo extends SliverPersistentHeaderDelegate {
  final double minExtent;
  final double maxExtent;

  MySliverHeaderTwo({
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
            child: Text("Mountains",
                /*style: Theme.of(context)
                    .textTheme
                    // .headline3!
                    .copyWith(color: Colors.black)*/),
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
