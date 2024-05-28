import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: GridViewPractice(),
    );
  }
}

class GridViewPractice extends StatelessWidget {
  GridViewPractice({super.key});

  List arrColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.purple,
    Colors.teal,
    Colors.orange,
    Colors.pink,
    Colors.yellow,
    Colors.cyanAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridView",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300.0,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 11.0,
                mainAxisSpacing: 11.0,
                children: [
                  Container(color: arrColors[0]),
                  Container(color: arrColors[1]),
                  Container(color: arrColors[2]),
                  Container(color: arrColors[3]),
                  Container(color: arrColors[4]),
                  Container(color: arrColors[5]),
                  Container(color: arrColors[6]),
                  Container(color: arrColors[7]),
                  Container(color: arrColors[8]),
                  Container(color: arrColors[9]),
                ],
              ),
            ),
            Container(height: 100.0),
            SizedBox(
              height: 200.0,
              child: GridView.extent(
                maxCrossAxisExtent: 100.0,
                crossAxisSpacing: 11.0,
                mainAxisSpacing: 11.0,
                children: [
                  Container(color: arrColors[0]),
                  Container(color: arrColors[1]),
                  Container(color: arrColors[2]),
                  Container(color: arrColors[3]),
                  Container(color: arrColors[4]),
                  Container(color: arrColors[5]),
                  Container(color: arrColors[6]),
                  Container(color: arrColors[7]),
                  Container(color: arrColors[8]),
                  Container(color: arrColors[9]),
                ],
              ),
            ),
            Container(height: 80.0),
            SizedBox(
              height: 200.0,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 11.0,
                  mainAxisSpacing: 11.0,
                ),
                itemBuilder: (context, index) {
                  return Container(color: arrColors[index]);
                },
                itemCount: arrColors.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
