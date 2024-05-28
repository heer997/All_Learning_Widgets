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
      title: "ChoiceChip",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ChoiceChipPractice(),
    );
  }
}

class ChoiceChipPractice extends StatefulWidget {
  const ChoiceChipPractice({super.key});

  @override
  State<ChoiceChipPractice> createState() => _ChoiceChipPracticeState();
}

class _ChoiceChipPracticeState extends State<ChoiceChipPractice> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ChoiceChip"),
      body: Center(
        child: ChoiceChip(
          label: const Text("Choice Chip"),
          selected: isSelected,
          selectedColor: Colors.orange,
          onSelected: (value) {
            setState(
              () {
                isSelected = value;
              },
            );
          },
        ),
      ),
    );
  }
}
