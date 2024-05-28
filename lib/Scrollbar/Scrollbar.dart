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
      title: "Scrollbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ScrollbarPractice(),
    );
  }
}

class ScrollbarPractice extends StatelessWidget {
  const ScrollbarPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Scrollbar"),
      body: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        thickness: 15.0,
        interactive: true,
        radius: const Radius.circular(20.0),
        child: ListView.builder(
          itemCount: 20,

          /// Scrollbar will only be visible for finite number of index elements
          /// if we comment itemCount: 20, then scrollbar will disappear
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(8.0),
              height: 150.0,
              color: Colors.blue.shade200,
              child: Text(
                "Item $index",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            );
          },
        ),
      ),
    );
  }
}
