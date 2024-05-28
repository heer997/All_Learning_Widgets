import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class ConstrainedBoxPractice extends StatelessWidget {
  const ConstrainedBoxPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ConstrainedBox Widget"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 200.0,
                maxHeight: 100.0,
              ),
              child: const Text(
                "Custom Toast will not work on android 11 and above, it will only use msg and"
                " toastLength remaining all properties are ignored",
                style: TextStyle(fontSize: 21.0),
                overflow: TextOverflow.fade,
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300.0,
                minWidth: 200.0,
                minHeight: 100.0,
                maxHeight: 300.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
                child: const Text(
                  "Click Here!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
