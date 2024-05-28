import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CheckBox Task",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CheckBoxListBehavesLikeRadioButtonTask(),
    );
  }
}

class CheckBoxListBehavesLikeRadioButtonTask extends StatefulWidget {
  const CheckBoxListBehavesLikeRadioButtonTask({super.key});

  @override
  State<CheckBoxListBehavesLikeRadioButtonTask> createState() =>
      _CheckBoxListBehavesLikeRadioButtonTaskState();
}

class _CheckBoxListBehavesLikeRadioButtonTaskState
    extends State<CheckBoxListBehavesLikeRadioButtonTask> {
  final checkBoxList = [
    CheckBoxModel(title: "First"),
    CheckBoxModel(title: "Second"),
    CheckBoxModel(title: "Third"),
    CheckBoxModel(title: "Fourth"),
    CheckBoxModel(title: "Fifth"),
  ];

  int previousIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CheckBoxTaskListTile like Radio"),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: checkBoxList.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                  value: checkBoxList[index].value,
                  title: Text(
                    checkBoxList[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      /// Below is 1st Logic for RadioButton Functionality in CheckBoxListTile
                      // for (int i = 0; i < checkBoxList.length; i++) {
                      //   checkBoxList[i].value = false;
                      // }
                      // checkBoxList[index].value = true;

                      /// Below is 2nd Logic for RadioButton Functionality in CheckBoxListTile
                      for (int i = 0; i < checkBoxList.length; i++) {
                        if (i == index) {
                          checkBoxList[i].value = !checkBoxList[i].value;
                        } else {
                          checkBoxList[i].value = false;
                        }
                      }
                    });
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CheckBoxModel {
  final String title;
  bool value;

  CheckBoxModel({required this.title, this.value = false});
}