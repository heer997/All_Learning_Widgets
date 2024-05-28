import "package:flutter/material.dart";
import "package:fluttertoast/fluttertoast.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Toast Message",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ToastMessage(),
    );
  }
}

class ToastMessage extends StatefulWidget {
  const ToastMessage({super.key});

  @override
  State<ToastMessage> createState() {
    return ToastMessageState();
  }
}

class ToastMessageState extends State<ToastMessage> {
  showToast(text, color) {
    return Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Toast Message"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.elevatedButton(() {
              showToast("SUBSCRIBE", Colors.green);
            }, "Show Toast Message"),
            const SizedBox(height: 50.0),
            UiHelper.elevatedButton(() {
              showToast("LIKE", Colors.red);
            }, "LIKE"),
          ],
        ),
      ),
    );
  }
}
