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
      title: "CheckBox_List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CheckBoxListPracticeTask(),
    );
  }
}

class CheckBoxListPracticeTask extends StatefulWidget {
  const CheckBoxListPracticeTask({super.key});

  @override
  State<CheckBoxListPracticeTask> createState() {
    return CheckBoxListPracticeTaskState();
  }
}

class CheckBoxListPracticeTaskState extends State<CheckBoxListPracticeTask> {
  final allChecked = CheckBoxModel(title: "All Checked");

  final checkBoxList = [
    CheckBoxModel(title: "Colleagues"),
    CheckBoxModel(title: "Messages"),
    CheckBoxModel(title: "Groups"),
    CheckBoxModel(title: "Calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CheckBoxList Task"),
      body: Column(
        children: [
          Card(
            child: CheckboxListTile(
              value: allChecked.value,
              title: Text(
                allChecked.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onChanged: (value) {
                setState(
                  () {
                    allChecked.value = value!;
                    for (var index in checkBoxList) {
                      if (allChecked.value) {
                        index.value = true;
                      } else {
                        index.value = false;
                      }
                    }
                  },
                );
              },
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: checkBoxList.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                  value: checkBoxList[index].value,
                  title: Text(checkBoxList[index].title),
                  onChanged: (value) {
                    setState(
                      () {
                        checkBoxList[index].value = value!;
                        for (var index in checkBoxList) {
                          if (index.value == false) {
                            allChecked.value = false;
                            return;
                          }
                          allChecked.value = true;
                        }
                      },
                    );
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
