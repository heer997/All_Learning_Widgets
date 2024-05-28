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
      home: const ReOrderableListViewDragAndDropListTaskTutorial(),
    );
  }
}

class ReOrderableListViewDragAndDropListTaskTutorial extends StatefulWidget {
  const ReOrderableListViewDragAndDropListTaskTutorial({super.key});

  @override
  State<ReOrderableListViewDragAndDropListTaskTutorial> createState() {
    return ReOrderableListViewDragAndDropListTaskTutorialState();
  }
}

class ReOrderableListViewDragAndDropListTaskTutorialState
    extends State<ReOrderableListViewDragAndDropListTaskTutorial> {
  /// List of Tiles
  final List myTiles = ["A", "B", "C", "D", "E", "F"];

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
      appBar: UiHelper.customAppBar("Re-Orderable ListView"),
      body: ReorderableListView(
        shrinkWrap: true,
        children: [
          for (final tile in myTiles)
            ListTile(
              key: ValueKey(tile),
              title: Text(tile),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          return updateMyTiles(oldIndex, newIndex);
        },
      ),
    );
  }
}
