import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RefreshIndicator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const RefreshIndicatorPractice(),
    );
  }
}

class RefreshIndicatorPractice extends StatelessWidget {
  const RefreshIndicatorPractice({super.key});

  Future<void> _refresh() {
    return Future.delayed(
      const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RefreshIndicator Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: RefreshIndicator(
          onRefresh: _refresh,
          color: Colors.white,
          backgroundColor: Colors.brown,
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(
                    "$index",
                    style: const TextStyle(fontSize: 20.0),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
