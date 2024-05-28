import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CustomScrollView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const RecommendedCustom(),
    );
  }
}

class RecommendedCustom extends StatelessWidget {
  const RecommendedCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70.0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.clear, color: Colors.white),
                Icon(Icons.shopping_cart_outlined, color: Colors.white),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(35.0),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "CustomScrollView",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.green,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/Natural_image.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: const Text(
                      "A ScrollView that creates custom scroll effects using slivers."
                      "A CustomScrollView lets you supply slivers directly to create various "
                      "scrolling effects, such as lists, grids, and expanding headers."
                      " For example, to create a scroll view that contains an expanding app bar followed"
                      " by a list and a grid, use a list of three slivers: SliverAppBar, SliverList, and SliverGrid."
                      "Widgets in these slivers must produce RenderSliver objects."
                      "To control the initial scroll offset of the scroll view, provide a controller with"
                      " its ScrollController.initialScrollOffset proper. By default, if items are inserted at the "
                      "top of a scrolling container like ListView or CustomScrollView, the top item and all of the items"
                      " below it are scrolled downwards. In some applications, it's preferable to have the top of the"
                      " list just grow upwards, without changing the scroll position. This example demonstrates how to "
                      "do that with a CustomScrollView with two SliverList children, and the CustomScrollView.center set"
                      " to the key of the bottom SliverList. The top one SliverList will grow upwards, and the bottom"
                      " SliverList will grow downwards. A CustomScrollView can allow Talkback/VoiceOver to make"
                      " announcements to the user when the scroll state changes. For example, on Android an"
                      " announcement might be read as showing items 1 to 10 of 23. To produce this announcement,"
                      " the scroll view needs three pieces of information:"
                      "The first visible child index."
                      "The total number of children."
                      "The total number of visible children."
                      "The last value can be computed exactly by the framework, however the first two must be"
                      " provided. Most of the higher-level scrollable widgets provide this information automatically."
                      " For example, ListView provides each child widget with a semantic index automatically and"
                      " sets the semantic child count to the length of the list."
                      "To determine visible indexes, the scroll view needs a way to associate the generated"
                      " semantics of each scrollable item with a semantic index. This can be done by wrapping"
                      " the child widgets in an IndexedSemantics."
                      "This semantic index is not necessarily the same as the index of the widget in the scrollable,"
                      " because some widgets may not contribute semantic information. Consider a ListView.separated:"
                      " every other widget is a divider with no semantic information. In this case, only odd numbered"
                      " widgets have a semantic index (equal to the index ~/ 2). Furthermore, the total number"
                      " of children in this example would be half the number of widgets. (The ListView.separated"
                      " constructor handles this automatically; this is only used here as an example.)"
                      "The total number of visible children can be provided by the constructor parameter semanticChildCount."
                      " This should always be the same as the number of widgets wrapped in IndexedSemantics."
                      "Persisting the scroll position during a session"
                      "Scroll views attempt to persist their scroll position using PageStorage. This can be disabled"
                      " by setting ScrollController.keepScrollOffset to false on the controller. If it is enabled,"
                      " using a PageStorageKey for the key of this widget is recommended to help disambiguate"
                      " different scroll views from each other."
                      "See also:"
                      "SliverList, which is a sliver that displays linear list of children."
                      "SliverFixedExtentList, which is a more efficient sliver that displays linear list of children"
                      " that have the same extent along the scroll axis."
                      "SliverGrid, which is a sliver that displays a 2D array of children."
                      "SliverPadding, which is a sliver that adds blank space around another sliver."
                      "SliverAppBar, which is a sliver that displays a header that can expand and float as the scroll"
                      " view scrolls."
                      "ScrollNotification and NotificationListener, which can be used to watch the scroll position"
                      " without using a ScrollController."
                      "IndexedSemantics, which allows annotating child lists with an index for scroll announcements."
                      " Constructors"
                      "CustomScrollView({Key? key, Axis scrollDirection = Axis.vertical, bool reverse = false,"
                      " ScrollController? controller, bool? primary, ScrollPhysics? physics, ScrollBehavior?"
                      " scrollBehavior, bool shrinkWrap = false, Key? center, double anchor = 0.0, double?"
                      " cacheExtent, List<Widget> slivers = const <Widget>[], int? semanticChildCount,"
                      " DragStartBehavior dragStartBehavior = DragStartBehavior.start,"
                      " ScrollViewKeyboardDismissBehavior keyboardDismissBehavior ="
                      " ScrollViewKeyboardDismissBehavior.manual, String? restorationId, Clip clipBehavior"
                      " = Clip.hardEdge})"
                      "Creates a ScrollView that creates custom scroll effects using slivers."),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
