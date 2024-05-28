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
      title: "ListBody Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ListBodyWidgetPractice(),
    );
  }
}

class ListBodyWidgetPractice extends StatelessWidget {
  const ListBodyWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ListBody Widget"),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            children: <Widget>[
              for (var i = 0; i <= 6; i++)
                SizedBox(
                  height: 100.0,
                  child: Card(
                    margin: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Item ${i + 1}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
