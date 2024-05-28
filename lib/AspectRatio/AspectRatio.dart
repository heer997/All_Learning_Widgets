import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class AspectRatioPractice extends StatelessWidget {
  const AspectRatioPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("AspectRatio Widget"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 100.0,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset("assets/images/Lord-Hanuman.jpg"),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                color: Colors.purple,
                width: double.infinity,
                height: 200.0,
                child: AspectRatio(
                  aspectRatio: 8 / 3,
                  child: Image.asset("assets/images/Lord-Hanuman.jpg"),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 300.0,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset("assets/images/Lord-Hanuman.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
