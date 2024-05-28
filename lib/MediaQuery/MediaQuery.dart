import "package:flutter/material.dart";

class MediaQueryPractice extends StatelessWidget {
  const MediaQueryPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MediaQuery width Height",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portrait();
          } else {
            return landscape();
          }
        },
      ),
    );
  }

  Widget portrait() {
    return const Center(
      child: Text(
        "Portrait",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
    );
  }

  Widget landscape() {
    return const Center(
      child: Text(
        "Landscape",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
    );
  }
}
