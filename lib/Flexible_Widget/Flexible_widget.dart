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
      title: "Flexible Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const FlexibleWidgetPractice(),
    );
  }
}

class FlexibleWidgetPractice extends StatelessWidget {
  const FlexibleWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Flexible Widget"),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.orange,
              alignment: Alignment.center,
              height: 300.0,
              child: const Text(
                "First",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,

              /// fit: FlexFit.tight will consumes all available spaces (in Mobile Screen)
              // fit: FlexFit.loose,
              /// fit: FlexFit.loose will consumes only provided(here height: 200.0) spaces
              child: Container(
                padding: const EdgeInsets.all(20.0),
                color: Colors.deepPurpleAccent,
                alignment: Alignment.center,
                height: 200.0,
                child: const Text(
                  "Second",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Expanded widget and fit: FlexFit.tight both works Similar. Both consumes all available spaces
/// as shown above.
/// fit: FlexFit.loose will consumes only provided space(Not consumes all available spaces)
/// These are the major differences between Expanded widget and Flexible widget as shown above
