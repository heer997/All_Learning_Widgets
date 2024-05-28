import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";
import "package:toggle_switch/toggle_switch.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToggleSwitch",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ToggleSwitchPractice(),
    );
  }
}

class ToggleSwitchPractice extends StatefulWidget {
  const ToggleSwitchPractice({super.key});

  @override
  State<ToggleSwitchPractice> createState() {
    return ToggleSwitchPracticeState();
  }
}

class ToggleSwitchPracticeState extends State<ToggleSwitchPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ToggleSwitch"),
      body: Center(
        child: ToggleSwitch(
          labels: const [
            "Male",
            "Female",
            "Others",
          ],
          onToggle: (index) {
            print("Switched to : $index");
          },
          fontSize: 20.0,
          minWidth: 120.0,
          minHeight: 70.0,
          cornerRadius: 30.0,
          icons: const [
            FontAwesomeIcons.mars,
            FontAwesomeIcons.venus,
            FontAwesomeIcons.transgender,
          ],
          iconSize: 20.0,
          activeFgColor: Colors.white,
          inactiveFgColor: Colors.white,
        ),
      ),
    );
  }
}
