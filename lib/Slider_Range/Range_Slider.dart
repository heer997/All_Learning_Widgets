import "package:flutter/material.dart";

class RangeSliderPractice extends StatefulWidget {
  RangeSliderPractice({super.key});

  @override
  State<RangeSliderPractice> createState() => _RangeSliderPracticeState();
}

class _RangeSliderPracticeState extends State<RangeSliderPractice> {
  RangeValues valueSet = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labelSet =
        RangeLabels(valueSet.start.toString(), valueSet.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Range Slider",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: RangeSlider(
        values: valueSet,
        labels: labelSet,
        divisions: 10,
        min: 0.0,
        max: 100.0,
        activeColor: Colors.blue,
        inactiveColor: Colors.blue.shade100,
        onChanged: (newValue) {
          setState(
            () {
              valueSet = newValue;
              print("Start : ${newValue.start}, \n End : ${newValue.end}");
            },
          );
        },
      ),
    );
  }
}
