import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";
import "package:sdreatech_learning_widget/Assets/assets_images.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ExpansionTile Collapse",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ExpansionTileCollapse(),
    );
  }
}

class ExpansionTileCollapse extends StatefulWidget {
  const ExpansionTileCollapse({super.key});

  @override
  State<ExpansionTileCollapse> createState() => _ExpansionTileCollapseState();
}

class _ExpansionTileCollapseState extends State<ExpansionTileCollapse>
    with TickerProviderStateMixin {
  late List<GlobalKey> expansionTile;
  int selected = -1;
  final List<AdvancedTile> items = [
    AdvancedTile(
      title: "A",
      body: AssetsProperty.apple,
    ),
    AdvancedTile(
      title: "B",
      body: AssetsProperty.appleicon,
    ),
    AdvancedTile(
      title: "C",
      body: AssetsProperty.businessmeeting,
    ),
    AdvancedTile(
      title: "D",
      body: AssetsProperty.facebook,
    ),
    AdvancedTile(
      title: "E",
      body: AssetsProperty.figmacommunity,
    ),
    AdvancedTile(
      title: "F",
      body: AssetsProperty.flutterlogo,
    ),
    AdvancedTile(
      title: "G",
      body: AssetsProperty.geeksforgeeks,
    ),
    AdvancedTile(
      title: "H",
      body: AssetsProperty.google,
    ),
    AdvancedTile(
      title: "I",
      body: AssetsProperty.lordhanuman,
    ),
    AdvancedTile(
      title: "J",
      body: AssetsProperty.naturalimage,
    ),
    AdvancedTile(
      title: "K",
      body: AssetsProperty.strawberry,
    ),
  ];

  @override
  void initState() {
    super.initState();
    expansionTile = List<GlobalKey<_ExpansionTileCollapseState>>.generate(
      items.length,
      (index) {
        return GlobalKey();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionTile Collapse"),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                key: Key("builder ${selected.toString()}"),
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 1.0, vertical: 5.0),
                    child: Card(
                      shadowColor: Colors.blue,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ExpansionTile(
                        key: Key(index.toString()),
                        initiallyExpanded: index == selected,
                        onExpansionChanged: (newState) {
                          if (newState) {
                            setState(() {
                              selected = index;
                            });
                          } else {
                            setState(() {
                              selected = -1;
                            });
                          }
                        },
                        title: Center(
                          child: Text(
                            items[index].title,
                            style: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 2.0,
                            child: Image.asset(items[index].body),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdvancedTile {
  final String title;
  final String body;

  AdvancedTile({
    required this.title,
    required this.body,
  });
}
