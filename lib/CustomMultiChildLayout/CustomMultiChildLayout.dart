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
      title: "CustomMultiChildLayout",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CustomMultiChildLayoutWidgetPracticeTutorial(),
    );
  }
}

class CustomMultiChildLayoutWidgetPracticeTutorial extends StatefulWidget {
  const CustomMultiChildLayoutWidgetPracticeTutorial({super.key});

  @override
  State<CustomMultiChildLayoutWidgetPracticeTutorial> createState() =>
      _CustomMultiChildLayoutWidgetPracticeTutorialState();
}

class _CustomMultiChildLayoutWidgetPracticeTutorialState
    extends State<CustomMultiChildLayoutWidgetPracticeTutorial> {
  final Map<String, Color> colors = {
    "green": Colors.green,
    "purple": Colors.purple,
    "red": Colors.red,
    "black": Colors.black,
    "blue": Colors.blue,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CustomMultiChildLayout"),
      body: CustomMultiChildLayout(
        delegate: CasecadDelegate(
          colors: colors,
          overlap: 40.0,
          textDirection: TextDirection.ltr,
        ),
        children: <Widget>[
          for (MapEntry<String, Color> entry in colors.entries)
            LayoutId(
              id: entry.key,
              child: Container(
                color: entry.value,
                width: 100.0,
                height: 500.0,
                alignment: Alignment.center,
                child: Text(
                  entry.key,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CasecadDelegate extends MultiChildLayoutDelegate {
  CasecadDelegate({
    required this.colors,
    required this.overlap,
    required this.textDirection,
  });

  final Map<String, Color> colors;
  final double overlap;
  final TextDirection textDirection;

  @override
  void performLayout(Size size) {
    /// Below is max width of single widget
    final columnWidth = size.width / colors.length;
    final columnHeight = size.height / colors.length;
    Offset childPosition = Offset.zero;
    for (final String id in colors.keys) {
      final Size currentSize = layoutChild(
        id,
        BoxConstraints(maxHeight: columnHeight, maxWidth: columnWidth),
      );

      positionChild(id, childPosition);
      childPosition += Offset(currentSize.width, currentSize.height - overlap);
    }
  }

  @override
  bool shouldRelayout(CasecadDelegate oldDelegate) {
    return true;
  }
}
