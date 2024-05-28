import "package:flutter/material.dart";

List<String> list = <String>[
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "Seven",
  "Eight",
  "Nine",
  "Ten"
];

class DropDownButtonPractice extends StatefulWidget {
  const DropDownButtonPractice({super.key});

  @override
  State<DropDownButtonPractice> createState() => _DropDownButtonPracticeState();
}

class _DropDownButtonPracticeState extends State<DropDownButtonPractice> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DropdownButton",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          items: list.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
          onChanged: (String? value) {
            setState(
              () {
                dropdownValue = value!;
              },
            );
          },
        ),
      ),
    );
  }
}
