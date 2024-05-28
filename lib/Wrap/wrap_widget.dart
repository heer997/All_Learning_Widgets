import "package:flutter/material.dart";

class WrapWidgetPractice extends StatelessWidget {
  const WrapWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wrap Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.blue,
            ),
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.brown,
            ),
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.red,
            ),
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.orange,
            ),
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.black,
            ),
            Container(
              width: 110.0,
              height: 110.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
