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
      title: "Transform Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const TransformWidgetPractice(),
    );
  }
}

class TransformWidgetPractice extends StatelessWidget {
  const TransformWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Transform Widget"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Transform.rotate(
            angle: 2,
            origin: const Offset(100.0, 100.0),
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue,
            ),
          ),
          Transform.scale(
            scale: 0.5,

            /// To change the size of the Container, scale is used
            origin: const Offset(100.0, 100.0),

            /// To change the position of the Container, origin is used
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.red,
            ),
          ),
          Transform.translate(
            offset: const Offset(-100.0, 10.0),

            /// To change the position of the Container, offset is used
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
