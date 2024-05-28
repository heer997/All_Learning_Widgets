import "package:flutter/material.dart";

class CheckBoxListTilePractice extends StatefulWidget {
  const CheckBoxListTilePractice({super.key});

  @override
  State<CheckBoxListTilePractice> createState() =>
      _CheckBoxListTilePracticeState();
}

class _CheckBoxListTilePracticeState extends State<CheckBoxListTilePractice> {
  bool _value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CheckBox",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 500.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: CheckboxListTile(
                title: const Text(
                  "CheckBox",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    const Text("CheckBox is a inbuilt widget in Flutter."),
                secondary: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://banner2.cleanpng.com/20180329/zue/kisspng-computer-icons"
                      "-user-profile-person-5abd85306ff7f7.0592226715223698404586.jpg"),
                ),
                selected: true,
                value: _value1,
                onChanged: (value) {
                  setState(
                    () {
                      _value1 = value!;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
