import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

/// Placeholder Widget : A widget that draws a box that represents where other widgets will one day be added.
/// This widget is useful during development to indicate that the interface is not yet complete.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Placeholder",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const PlaceholderWidgetPractice(),
    );
  }
}

class PlaceholderWidgetPractice extends StatelessWidget {
  const PlaceholderWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Placeholder Widget"),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Placeholder(
                color: Colors.blue,
                strokeWidth: 12.0,
              ),
            ),
            Flexible(
              child: Placeholder(
                color: Colors.brown,
                strokeWidth: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
