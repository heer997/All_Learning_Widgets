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
      title: "BottomSheet",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const BottomSheetPractice(),
    );
  }
}

class BottomSheetPractice extends StatelessWidget {
  const BottomSheetPractice({super.key});

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return const SizedBox(
          height: 200.0,
          child: Center(
            child: Text(
              "Flutter Guys",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
          ),
        );
      },
      backgroundColor: Colors.blue,
      barrierColor: Colors.black87.withOpacity(0.5),
      isDismissible: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("BottomSheet"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _displayBottomSheet(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            fixedSize: const Size(200.0, 50.0),
          ),
          child: const Text(
            "OPEN",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
