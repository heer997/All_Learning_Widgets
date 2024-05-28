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
      title: "Opacity",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const OpacityPractice(),
    );
  }
}

class OpacityPractice extends StatelessWidget {
  const OpacityPractice({super.key});

  /// Opacity(opacity: 0.0) widget sometimes can be used in place of SizedBox widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Opacity"),
      body: Center(
        child: Opacity(
          opacity: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              ),
              Text(
                "OPACITY",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white, size: 30.0),
      ),
    );
  }
}
