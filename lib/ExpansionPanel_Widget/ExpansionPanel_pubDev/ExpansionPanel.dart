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
      title: "ExpansionPanelList",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ExpansionPanelListExample(),
    );
  }
}

class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() {
    return ExpansionPanelListExampleState();
  }
}

class ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  final List<ItemModel> _data = List<ItemModel>.generate(10, (index) {
    return ItemModel(
      headerValue: "Panel ${index + 1}",
      expandedValue: "This is item number ${index + 1}",
    );
  });

  // int? expandedItemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionPanelList"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              /// Below is Expand and Collapse buttons

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(
              //           () {
              //             for (int i = 0; i < _data.length; i++) {
              //               _data[i].isExpandedValue = true;
              //             }
              //           },
              //         );
              //       },
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue,
              //       ),
              //       child: const Text(
              //         "Expand All",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, color: Colors.white),
              //       ),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(
              //           () {
              //             for (int i = 0; i < _data.length; i++) {
              //               _data[i].isExpandedValue = false;
              //             }
              //           },
              //         );
              //       },
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue,
              //       ),
              //       child: const Text(
              //         "Collapse All",
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold, color: Colors.white),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 30.0),

              Container(
                child: _buildPanel(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList.radio(
      materialGapSize: 10.0,
      animationDuration: const Duration(milliseconds: 500),
      dividerColor: Colors.white,
      expansionCallback: (int index, bool isExpanded) {
        setState(
          () {
            // _data[index].isExpandedValue = isExpanded;
            // _data[index].isExpanded = !_data[index].isExpanded;
            // _data[index].isExpandedValue = !_data[index].isExpandedValue;

            // if(!isExpanded)
            //   {
            //     isExpanded = true;
            //
            //   }
            // else
            //   {
            //     isExpanded = false;
            //   }
            // else
            //   {
            //     isExpanded = isExpandedValue;
            //   }


            // if(isExpanded)
            //   {
            //     expandedItemIndex = index;
            //   }
            // else
            //   {
            //     expandedItemIndex = null;
            //   }
          },
        );
      },
      children: _data.map<ExpansionPanelRadio>(
        (ItemModel item) {
          return ExpansionPanelRadio(
            value: item.headerValue,
            backgroundColor: Colors.lightBlueAccent.shade100,
            canTapOnHeader: true,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(
                  item.headerValue,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            },
            body: ListTile(
              title: Text(
                item.expandedValue,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle:
                  const Text("To delete this panel, tap the trash can icon"),
              trailing: IconButton(
                onPressed: () {
                  // _data.removeAt(index);
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
              onTap: () {
                setState(
                  () {
                    _data.removeWhere(
                      (ItemModel currentItem) {
                        return item == currentItem;
                      },
                    );
                  },
                );
              },
            ),
            // isExpanded: item.isExpandedValue,
            // isExpanded: _data[index].isExpandedValue,
          );
        },
      ).toList(),
    );
  }
}

class ItemModel {
  String expandedValue;
  String headerValue;
  bool isExpandedValue;

  ItemModel({
    required this.expandedValue,
    required this.headerValue,
    this.isExpandedValue = false,
  });
}
