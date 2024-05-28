import "package:flutter/cupertino.dart";
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
      title: "LimitedBox Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const LimitedBoxWidgetPractice(),
    );
  }
}

class LimitedBoxWidgetPractice extends StatelessWidget {
  const LimitedBoxWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: UiHelper.customAppBar("LimitedBox Widget"),
      body: Column(
        children: [
          LimitedBox(
            maxHeight: 200.0,
            child: Container(
              color: Colors.blue,
              height: 2000.0,
            ),
          ),
        ],
      ),
    );
  }
}
