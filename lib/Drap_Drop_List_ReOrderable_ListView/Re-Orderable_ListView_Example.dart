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
      title: "Re-Orderable ListView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ReOrderableListViewExample(),
    );
  }
}

class ReOrderableListViewExample extends StatefulWidget {
  const ReOrderableListViewExample({super.key});

  @override
  State<ReOrderableListViewExample> createState() =>
      _ReOrderableListViewExampleState();
}

class _ReOrderableListViewExampleState
    extends State<ReOrderableListViewExample> {
  /// List of Tiles
  final List myTiles = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
  ];

  /// reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      /// An adjustment is needed when moving the tile down the list
      if (oldIndex < newIndex) {
        newIndex--;
      }

      /// Get the tile we are moving
      final tile = myTiles.removeAt(oldIndex);

      /// Place the tile in the new position
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ReOrderableListView"),
      backgroundColor: Colors.deepPurpleAccent.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ReorderableListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              for (final tile in myTiles)
                Padding(
                  key: ValueKey(tile),
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    key: ValueKey(tile),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    tileColor: Colors.deepPurple,
                    contentPadding: const EdgeInsets.all(5.0),
                    selectedTileColor: Colors.deepPurple,
                    horizontalTitleGap: 12.0,
                    title: Text(
                      tile,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    subtitle: Text(
                      tile,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
            onReorder: (oldIndex, newIndex) {
              return updateMyTiles(oldIndex, newIndex);
            },
          ),
        ],
      ),
    );
  }
}
