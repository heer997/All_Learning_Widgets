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
      title: "ExpansionPanel",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ExpansionPanelListPracticalCollapseTask(),
    );
  }
}

class ExpansionPanelListPracticalCollapseTask extends StatefulWidget {
  const ExpansionPanelListPracticalCollapseTask({super.key});

  @override
  State<ExpansionPanelListPracticalCollapseTask> createState() =>
      _ExpansionPanelListPracticalCollapseTaskState();
}

class _ExpansionPanelListPracticalCollapseTaskState
    extends State<ExpansionPanelListPracticalCollapseTask> {
  final List<ItemModelTwo> _data = List.generate(10, (index) {
    return ItemModelTwo(
      headerValue: "Panel ${index + 1}",
      expandedValue: "This is item number ${index + 1}",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ExpansionPanel"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              ExpansionPanelList(
                materialGapSize: 10.0,
                animationDuration: const Duration(milliseconds: 500),
                dividerColor: Colors.white,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    for (int i = 0; i < _data.length; i++) {
                      if (i == index) {
                        _data[i].isExpandedValue = !_data[i].isExpandedValue;
                      } else {
                        _data[i].isExpandedValue = false;
                      }
                    }
                  });
                },
                children: _data.map<ExpansionPanel>(
                  (ItemModelTwo item) {
                    return ExpansionPanel(
                      backgroundColor: Colors.brown.shade100,
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
                        subtitle: const Text(
                            "To delete this panel, tap the trash can icon"),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              _data.remove(item);
                              UiHelper.snackbar(context,
                                  "Item ${item.headerValue} is deleted...");
                            });
                          },
                          icon: const Icon(Icons.delete, color: Colors.red),
                        ),
                      ),
                      isExpanded: item.isExpandedValue,
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemModelTwo {
  String expandedValue;
  String headerValue;
  bool isExpandedValue;

  ItemModelTwo({
    required this.expandedValue,
    required this.headerValue,
    this.isExpandedValue = false,
  });
}

/// All Logic Tries below:
// _data[index].isExpandedValue = isExpanded;

// for(var index in _data)
//   {
//     if(isExpanded)
//       {
//         index.isExpandedValue = true;
//       }
//     else
//       {
//         index.isExpandedValue = false;
//       }
//   }

// for(int i = 0; i < _data.length; i++)
//   {
//     // _data[i].isExpandedValue = i == index && !isExpanded;
//     // _data[i].isExpandedValue = !_data[i].isExpandedValue;
//
//     // _data[index].isExpandedValue = isExpanded;
//
//     if(isExpanded)
//       {
//         _data[i].isExpandedValue = true;
//       }
//     else
//       {
//         _data[i].isExpandedValue = false;
//       }
//   }

// selected = isExpanded ? -1 : index;

// for(var index in _data)
//   {
//     if(isExpanded)
//       {
//         index.headerValue = false as String;
//       }
//     else
//       {
//         index.headerValue = true as String;
//       }
//   }

// for (var index in _data) {
//   if (isExpanded) {
//     selected = index as int;
//   }
//   else
//     {
//       selected = -1;
//     }
/*else {
                        setState(() {
                          selected = 1;
                        });
                      }*/
// }

// for(var index in _data)
//   {
//     _data[index].isExpandedValue = !_data[index].isExpandedValue;
//   }

// isExpanded = false;
// for(var index in _data)
//   {
//     if(isExpanded)
//       {
//         index.isExpandedValue = true;
//       }
//     else
//       {
//         index.isExpandedValue = false;
//       }
//   }

// if(_data[index].isExpandedValue)
//   {
//     isExpanded = false;
//   }
// else
//   {
//     isExpanded = true;
//   }

// if(!isExpanded)
//   {
//     isExpanded = false;
//   }
// else
//   {
//     isExpanded = true;
//   }

// if(isExpanded)
//   {
//     expandedItemIndex = index;
//   }
// else
//   {
//     expandedItemIndex = null;
//   }
