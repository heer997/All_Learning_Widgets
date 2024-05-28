import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Intrinsic Widgets",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const IntrinsicWidgetPractice(),
    );
  }
}

class IntrinsicWidgetPractice extends StatelessWidget {
  const IntrinsicWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Intrinsic Height Width"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(height: 100.0, width: 50.0, color: Colors.blue),
                  Container(height: 250.0, width: 50.0, color: Colors.teal),
                  Container(height: 150.0, width: 50.0, color: Colors.brown),
                ],
              ),
            ),
            const SizedBox(height: 100.0),
            IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(height: 50.0, width: 150.0, color: Colors.yellow),
                  Container(height: 50.0, width: 100.0, color: Colors.brown),
                  Container(height: 50.0, width: 50.0, color: Colors.teal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
