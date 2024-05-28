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
      title: "ExpansionPanel",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ExpansionPanelDbestech(),
    );
  }
}

class ExpansionPanelDbestech extends StatefulWidget {
  const ExpansionPanelDbestech({super.key});

  @override
  State<ExpansionPanelDbestech> createState() => _ExpansionPanelDbestechState();
}

class _ExpansionPanelDbestechState extends State<ExpansionPanelDbestech> {
  final List<Map<String, dynamic>> _items = List.generate(
    10,
    (index) => {
      "id": index,
      "title": "Item $index",
      "content":
          "This is the main content of item $index. It is very long and you have to expand the tile"
              "to see it.",
    },
  );

  void _removeItem(int id) {
    setState(() {
      _items.removeWhere(
        (element) {
          return element["id"] == id;
        },
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Item with id $id has been removed",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionTile"),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            color: Colors.blue,
            child: ExpansionTile(
              childrenPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              title: Text(
                _items[index]["title"],
                style: const TextStyle(color: Colors.white),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _items[index]["content"],
                  style: const TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {});
                    return _removeItem(index);
                  },
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
