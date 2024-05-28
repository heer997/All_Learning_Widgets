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
      title: "ClipPath",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ClipPathPractice(),
    );
  }
}

class ClipPathPractice extends StatelessWidget {
  const ClipPathPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ClipPath Widget"),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: double.infinity,
            height: 300.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 4, size.height - 40, size.width / 2, size.height - 20)
      ..quadraticBezierTo(
        3 / 4 * size.width,
        size.width,
        size.height,
        size.height - 30,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
