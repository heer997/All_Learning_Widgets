import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckboxListTile Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> _checked = List.generate(5, (index) => false); // Generate initial list of checkbox states

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile Example'),
      ),
      body: ListView.builder(
        itemCount: 5, // Number of checkboxes
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text('Checkbox ${index + 1}'),
            value: _checked[index],
            onChanged: (newValue) {
              setState(() {
                _checked[index] = newValue!; // Update the state of the checkbox
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Clear all checkboxes when the floating action button is pressed
            _checked = List.generate(5, (index) => false);
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
