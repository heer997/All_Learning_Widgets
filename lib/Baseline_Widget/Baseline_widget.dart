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
      title: "Baseline Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const BaselineWidgetPractice(),
    );
  }
}

class BaselineWidgetPractice extends StatelessWidget {
  const BaselineWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Baseline Widget"),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            Baseline(
              baseline: -200.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                "World",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            Baseline(
              baseline: 200.0,
              baselineType: TextBaseline.alphabetic,
              child: Text("WOW"),
            ),
            Text("END"),
          ],
        ),
      ),
    );
  }
}
