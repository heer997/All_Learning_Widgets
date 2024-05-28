import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Third Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UiHelper.container(Colors.brown),
                    UiHelper.container(Colors.pink),
                    UiHelper.container(Colors.yellow),
                    UiHelper.container(Colors.teal),
                    UiHelper.container(Colors.blue),
                    UiHelper.container(Colors.brown),
                    UiHelper.container(Colors.pink),
                    UiHelper.container(Colors.yellow),
                    UiHelper.container(Colors.teal),
                    UiHelper.container(Colors.blue),
                    UiHelper.container(Colors.yellow),
                    UiHelper.container(Colors.teal),
                    UiHelper.container(Colors.blue),
                  ],
                ),
              ),
              UiHelper.container(Colors.brown),
              UiHelper.container(Colors.pink),
              UiHelper.container(Colors.yellow),
              UiHelper.container(Colors.teal),
              UiHelper.container(Colors.blue),
              UiHelper.container(Colors.brown),
              UiHelper.container(Colors.pink),
              UiHelper.container(Colors.yellow),
              UiHelper.container(Colors.teal),
              UiHelper.container(Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
