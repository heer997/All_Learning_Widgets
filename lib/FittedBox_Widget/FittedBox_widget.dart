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
      title: "FittedBox Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: FittedBoxWidgetPractice(),
    );
  }
}

class FittedBoxWidgetPractice extends StatelessWidget {
  const FittedBoxWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("FittedBox Widget"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Row(
                children: <Widget>[
                  const Text(
                    "This is the Image : ",
                  ),
                  Image.asset("assets/images/Natural_image.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
              child: const FittedBox(
                child: Text(
                  "This is the large Text",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 100.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
