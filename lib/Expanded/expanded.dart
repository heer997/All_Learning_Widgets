import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class ExpandedPractice extends StatelessWidget {
  const ExpandedPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Expanded Widget"),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: 50.0,
              height: 100.0,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 50.0,
              height: 100.0,
              color: Colors.brown,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: 50.0,
              height: 100.0,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 50.0,
              height: 100.0,
              color: Colors.green,
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.purple,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
