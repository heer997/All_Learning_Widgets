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
      title: "CheckboxListTile",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CheckedSingleAndMultipleInCheckboxListTileTask(),
    );
  }
}

class CheckedSingleAndMultipleInCheckboxListTileTask extends StatefulWidget {
  const CheckedSingleAndMultipleInCheckboxListTileTask({super.key});

  @override
  State<CheckedSingleAndMultipleInCheckboxListTileTask> createState() {
    return CheckedSingleAndMultipleInCheckboxListTileTaskState();
  }
}

class CheckedSingleAndMultipleInCheckboxListTileTaskState
    extends State<CheckedSingleAndMultipleInCheckboxListTileTask> {
  final allChecked = CheckboxModel(title: "All Checked");
  final checkBoxList = [
    CheckboxModel(title: "Monday"),
    CheckboxModel(title: "Tuesday"),
    CheckboxModel(title: "Wednesday"),
    CheckboxModel(title: "Thursday"),
    CheckboxModel(title: "Friday"),
    CheckboxModel(title: "Saturday"),
    CheckboxModel(title: "Sunday"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CheckboxListTile"),
      body: Column(
        children: [
          Card(
            child: CheckboxListTile(
              value: allChecked.value,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                "All Selected",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(
                  () {
                    allChecked.value = value!;

                    /// 1st Logic using for in Loop
                    for (var element in checkBoxList) {
                      element.value = value!;
                    }

                    /// 2nd Logic using forEach Loop
                    // checkBoxList.forEach((element) {
                    //   element.value = value;
                    // });
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
                  controlAffinity: ListTileControlAffinity.leading,
                  value: checkBoxList[index].value,
                  title: Text(
                    checkBoxList[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(
                      () {
                        checkBoxList[index].value = !checkBoxList[index].value;
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

class CheckboxModel {
  String title;
  bool value;

  CheckboxModel({required this.title, this.value = false});
}
