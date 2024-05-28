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
      home: const ExpansionPanelWidgetPractice(),
    );
  }
}

class ExpansionPanelWidgetPractice extends StatefulWidget {
  const ExpansionPanelWidgetPractice({super.key});

  @override
  State<ExpansionPanelWidgetPractice> createState() {
    return ExpansionPanelWidgetPracticeState();
  }
}

class ExpansionPanelWidgetPracticeState
    extends State<ExpansionPanelWidgetPractice> {
  bool f1 = false;
  bool f2 = false;

  ExpansionPanelList getPanelList() {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(
          () {
            if (panelIndex == 0) {
              f1 = !isExpanded;
            }
            if (panelIndex == 1) {
              f2 = !isExpanded;
            }
          },
        );
      },
      children: [
        ExpansionPanel(
          isExpanded: f1,
          headerBuilder: (context, isExpanded) {
            return const ListTile(
              title: Text(
                "item 1",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          body: const ListTile(
            title: Text("item 2"),
            subtitle: Text("Ex item"),
          ),
        ),
        ExpansionPanel(
          isExpanded: f2,
          headerBuilder: (context, isExpanded) {
            return const ListTile(
              title: Text(
                "item 2",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
          body: const ListTile(
            title: Text("item 3"),
            subtitle: Text("Ex item"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionPanel Widget"),
      body: Column(
        children: [
          getPanelList(),
        ],
      ),
    );
  }
}
