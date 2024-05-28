import "package:flutter/material.dart";

class SwitchPractice extends StatefulWidget {
  SwitchPractice({super.key});

  @override
  State<SwitchPractice> createState() => _SwitchPracticeState();
}

class _SwitchPracticeState extends State<SwitchPractice> {
  bool notification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Switch",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(width: 20.0),
              Switch(
                value: notification,
                onChanged: (value) {
                  setState(() {
                    notification = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
