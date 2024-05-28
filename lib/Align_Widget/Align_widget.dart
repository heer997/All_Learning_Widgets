import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

/// Align Widget : Align widget that aligns its child within itself and optionally sizes itself based on the
/// child's size.
/// heightFactor : If non-null, sets its height to the child's height multiplied by this factor.
/// Can be both greater and less than 1.0 but must be non-negative.
///
/// widthFactor : If non-null, sets its width to the child's width multiplied by this factor.
/// Can be both greater and less than 1.0 but must be non-negative.
///
/// heightFactor works as follows : (value of heightFactor * actual height of child Container)
/// widthFactor works as follows : (value of widthFactor * actual width of child Container)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Align Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const AlignWidgetPractice(),
    );
  }
}

class AlignWidgetPractice extends StatelessWidget {
  const AlignWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Align Widget"),
      body: Align(
        // alignment: Alignment.bottomLeft,
        alignment: const Alignment(0.1, 0.3),

        ///We can set alignment using values also as : alignment: Alignment(0.1, 0.3),
        heightFactor: 2,
        widthFactor: 3,
        child: Container(
          color: Colors.orange,
          height: 80.0,
          width: 100.0,
        ),
      ),
    );
  }
}
