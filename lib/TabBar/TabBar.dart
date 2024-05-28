import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";
import "package:sdreatech_learning_widget/TabBar/Pages/FirstPage.dart";
import "package:sdreatech_learning_widget/TabBar/Pages/SecondPage.dart";
import "package:sdreatech_learning_widget/TabBar/Pages/ThirdPage.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabBar Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: TabBarPractice(),
    );
  }
}

class TabBarPractice extends StatefulWidget {
  const TabBarPractice({super.key});

  @override
  State<TabBarPractice> createState() => _TabBarPracticeState();
}

class _TabBarPracticeState extends State<TabBarPractice>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(
      () {
        setState(
          () {},
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "TabBar ${controller.index + 1}",
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: controller,
            tabs: const [
              Tab(
                text: "Tab 1",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Tab 2",
                icon: Icon(Icons.star),
              ),
              Tab(
                text: "Tab 3",
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            FirstTabBarPage(),
            SecondTabBarPage(),
            ThirdTabBarPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            controller.animateTo(0);
          },
          child: const Icon(Icons.add, size: 30.0, color: Colors.white),
        ),
      ),
    );
  }
}
