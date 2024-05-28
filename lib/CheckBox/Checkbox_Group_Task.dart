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
      title: "CheckBox Group Toggle",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const CheckboxGroupToggleTask(),
    );
  }
}

class CheckboxGroupToggleTask extends StatefulWidget {
  const CheckboxGroupToggleTask({super.key});

  @override
  State<CheckboxGroupToggleTask> createState() {
    return CheckboxGroupToggleTaskState();
  }
}

class CheckboxGroupToggleTaskState extends State<CheckboxGroupToggleTask> {
  final List<CheckboxModel> _dropdownAvailability = [];

  bool _checkAll = false;

  @override
  void initState() {
    _dropdownAvailability.addAll({
      CheckboxModel(id: 1, name: "Monday", selected: false),
      CheckboxModel(id: 2, name: "Tuesday", selected: false),
      CheckboxModel(id: 3, name: "Wednesday", selected: false),
      CheckboxModel(id: 4, name: "Thursday", selected: false),
      CheckboxModel(id: 5, name: "Friday", selected: false),
      CheckboxModel(id: 6, name: "Saturday", selected: false),
      CheckboxModel(id: 7, name: "Sunday", selected: false),
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("CheckBox Group Task"),
      body: Column(
        children: [
          Card(
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: _checkAll,
              onChanged: (value) {
                setState(
                  () {
                    _checkAll = value!;

                    /// Below is 1st Logic
                    for (var index in _dropdownAvailability) {
                      index.selected = value;
                    }

                    /// Below is 2nd Logic
                    // _dropdownAvailability.forEach(
                    //   (element) {
                    //     element.selected = value;
                    //   },
                    // );
                  },
                );
              },
              activeColor: Colors.blue,
              title: const Text(
                "Allow All",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _dropdownAvailability.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _dropdownAvailability[index].selected,
                  onChanged: (value) {
                    setState(
                      () {
                        _dropdownAvailability[index].selected = value!;

                        final check = _dropdownAvailability.every(
                          (element) {
                            return element.selected;
                          },
                        );

                        _checkAll = check;
                      },
                    );
                  },
                  activeColor: Colors.blue,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _dropdownAvailability[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.plus_one),
                    ],
                  ),
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
  int id;
  String name;
  bool selected;

  CheckboxModel({required this.id, required this.name, required this.selected});
}
