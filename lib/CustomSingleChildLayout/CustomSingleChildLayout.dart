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
      title: "CustomSingleChildScrollView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: CustomSingleChildLayoutWidgetPractice(),
    );
  }
}

class CustomSingleChildLayoutWidgetPractice extends StatelessWidget {
  CustomSingleChildLayoutWidgetPractice({super.key});

  final ValueNotifier<Size> _size = ValueNotifier<Size>(
    const Size(200.0, 100.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CustomSingleChildLayout"),
      body: Center(
        child: CustomSingleChildLayout(
          delegate: CustomLayoutDelegate(_size),
          child: Container(
            color: Colors.teal,
            width: 50.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

class CustomLayoutDelegate extends SingleChildLayoutDelegate {
  late final ValueNotifier<Size> size;

  CustomLayoutDelegate(this.size);

  @override
  bool shouldRelayout(CustomLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return size.value;
  }

  @override
  BoxConstraints getContraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size.value / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 4, size.height / 4);
  }
}
