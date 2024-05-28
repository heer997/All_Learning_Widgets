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
      home: const ExpansionPanelPractice(),
    );
  }
}

class ExpansionPanelPractice extends StatefulWidget {
  const ExpansionPanelPractice({super.key});

  @override
  State<ExpansionPanelPractice> createState() => _ExpansionPanelPracticeState();
}

class _ExpansionPanelPracticeState extends State<ExpansionPanelPractice> {
  final List<Item> _data = List<Item>.generate(
    10,
    (int index) {
      return Item(
        headerText: "Item $index",
        expandedText: "This is item number $index",
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionPanel Widget"),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(
              () {
                _data[index].isExpanded = !isExpanded;
              },
            );
          },
          children: _data.map<ExpansionPanel>(
            (Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(item.headerText),
                  );
                },
                body: ListTile(
                  title: Text(item.expandedText),
                  subtitle: const Text("To delete this item, click trash icon"),
                  trailing: const Icon(Icons.delete, color: Colors.red),
                  onTap: () {
                    setState(
                      () {
                        _data.removeWhere(
                          (Item currentItem) {
                            return item == currentItem;
                          },
                        );
                      },
                    );
                  },
                ),
                isExpanded: item.isExpanded,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class Item {
  String headerText;
  String expandedText;
  bool isExpanded;

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
}
