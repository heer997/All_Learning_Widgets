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
      title: "DataTable",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const DataTablePractice(),
    );
  }
}

class DataTablePractice extends StatelessWidget {
  const DataTablePractice({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titles = const TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
    return Scaffold(
      appBar: UiHelper.customAppBar("DataTable"),
      body: Center(
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text("Name", style: titles),
            ),
            DataColumn(
              label: Text("Age", style: titles),
            ),
            DataColumn(
              label: Text("Color", style: titles),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    "Max",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "21",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "Red",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    "Jane",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "25",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "Blue",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    "William",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "27",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                DataCell(
                  Text(
                    "Yellow",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
