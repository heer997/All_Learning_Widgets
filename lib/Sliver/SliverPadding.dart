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
      title: "SliverPadding",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const SliverPaddingWidgetPractice(),
    );
  }
}

class SliverPaddingWidgetPractice extends StatelessWidget {
  const SliverPaddingWidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("SliverList and SliverGrid"),
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(50.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Image.asset("assets/images/Natural_image.jpg"),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
