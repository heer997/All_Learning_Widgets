import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expandable List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ExpandableListScreen(),
    );
  }
}

class ExpandableListScreen extends StatefulWidget {
  const ExpandableListScreen({super.key});

  @override
  State<ExpandableListScreen> createState() => _ExpandableListScreenState();
}

class _ExpandableListScreenState extends State<ExpandableListScreen> {
  final List<ItemModel> _data = List.generate(10, (index) {
    return ItemModel(
      headerValue: "Panel ${index + 1}",
      expandedValue: "This is item number ${index + 1}",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expandable List"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: _data.map((item) => _buildListItem(item)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(ItemModel item) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              item.headerValue,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              item.isExpanded ? Icons.expand_less : Icons.expand_more,
            ),
            onTap: () {
              setState(() {
                _data.forEach((element) {
                  element.isExpanded = false;
                });
                item.isExpanded = true;
              });
            },
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: item.isExpanded ? 100.0 : 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      item.expandedValue,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const Text("To delete this panel, tap the trash can icon"),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _data.remove(item);
                          });
                        },
                        icon: const Icon(Icons.delete, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemModel {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  ItemModel({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });
}