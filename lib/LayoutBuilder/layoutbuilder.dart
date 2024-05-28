import "package:flutter/material.dart";

class LayoutBuilderPractice extends StatelessWidget {
  const LayoutBuilderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LayoutBuilder",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainer();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.indigo,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.pink,
          ),
          Container(
            height: 200.0,
            width: 200.0,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
