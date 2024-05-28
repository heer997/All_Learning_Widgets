import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 2700.0,
                width: 500.0,
                child: Stack(
                  children: <Widget>[
                    UiHelper.container2(
                      color: Colors.blue,
                    ),
                    Positioned(
                      top: 100.0,
                      left: 50.0,
                      child: UiHelper.container2(
                        color: Colors.pink,
                      ),
                    ),
                    Positioned(
                      top: 200.0,
                      left: 100.0,
                      child: UiHelper.container2(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
