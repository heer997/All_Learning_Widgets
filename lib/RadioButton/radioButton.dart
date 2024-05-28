import "package:flutter/material.dart";

class RadioButtonPractice extends StatefulWidget {
  RadioButtonPractice({super.key});

  @override
  State<RadioButtonPractice> createState() => _RadioButtonPracticeState();
}

class _RadioButtonPracticeState extends State<RadioButtonPractice> {
  int selectedOption = 0;

  int selectedOption2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RadioButton",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: const Text(
                "Option 1",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(
                    () {
                      selectedOption = value!;
                    },
                  );
                },
                splashRadius: 20.0,
                activeColor: Colors.blue,
                fillColor: WidgetStateProperty.all(Colors.blue),
              ),
            ),
            ListTile(
              title: const Text(
                "Option 2",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio<int>(
                value: 2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(
                    () {
                      selectedOption = value!;
                    },
                  );
                },
                splashRadius: 20.0,
                activeColor: Colors.blue,
                fillColor: WidgetStateProperty.all(Colors.blue),
              ),
            ),
            const SizedBox(height: 50.0),
            ListTile(
              title: const Text(
                "Male",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio<int>(
                value: 3,
                groupValue: selectedOption2,
                onChanged: (value) {
                  setState(
                    () {
                      selectedOption2 = value!;
                    },
                  );
                },
                splashRadius: 20.0,
                activeColor: Colors.brown,
                fillColor: WidgetStateProperty.all(Colors.brown),
              ),
            ),
            ListTile(
              title: const Text(
                "Female",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio<int>(
                value: 4,
                groupValue: selectedOption2,
                onChanged: (value) {
                  setState(
                    () {
                      selectedOption2 = value!;
                    },
                  );
                },
                splashRadius: 20.0,
                activeColor: Colors.brown,
                fillColor: WidgetStateProperty.all(Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
