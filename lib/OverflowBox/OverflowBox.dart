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
      title: "OverflowBox",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const OverflowBoxWidgetPractice(),
    );
  }
}

class OverflowBoxWidgetPractice extends StatelessWidget {
  const OverflowBoxWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("OverflowBox"),
      body: Center(
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.orangeAccent,
          child: OverflowBox(
            maxWidth: 200.0,
            maxHeight: 200.0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
