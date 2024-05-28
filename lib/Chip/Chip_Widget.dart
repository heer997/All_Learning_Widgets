import "package:chips_choice/chips_choice.dart";
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
      title: "Chip Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ChipWidgetPractice(),
    );
  }
}

class ChipWidgetPractice extends StatefulWidget {
  const ChipWidgetPractice({super.key});

  @override
  State<ChipWidgetPractice> createState() => _ChipWidgetPracticeState();
}

class _ChipWidgetPracticeState extends State<ChipWidgetPractice> {
  int tag = 1;

  List<String> tags = [];

  List<String> options = [
    "Blogs",
    "News",
    "Politics",
    "Beauty",
    "Technology",
    "Java",
    "Flutter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Chip Widget"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ChipsChoice.single(
              value: tag,
              onChanged: (value) {
                setState(
                  () {
                    tag = value;
                  },
                );
              },
              choiceItems: C2Choice.listFrom(
                source: options,
                value: (i, v) {
                  return i;
                },
                label: (i, v) {
                  return v;
                },
              ),
              wrapped: true,
            ),
          ],
        ),
      ),
    );
  }
}
