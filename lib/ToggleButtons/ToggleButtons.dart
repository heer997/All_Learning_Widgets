import "package:animated_toggle_switch/animated_toggle_switch.dart";
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
      title: "ToggleBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const ToggleBarPractice(),
    );
  }
}

class ToggleBarPractice extends StatefulWidget {
  const ToggleBarPractice({super.key});

  @override
  State<ToggleBarPractice> createState() => _ToggleBarPracticeState();
}

class _ToggleBarPracticeState extends State<ToggleBarPractice> {
  bool firstSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("ToggleBar"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedToggleSwitch.size(
              current: firstSwitchValue,
              values: const [false, true],
              iconOpacity: 0.2,
              indicatorSize: const Size.fromWidth(100.0),
              customIconBuilder: (context, local, global) {
                return Text(
                  local.value ? "Android" : "iOS",
                  style: TextStyle(
                    color: Color.lerp(
                        Colors.black, Colors.white, local.animationValue),
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              borderWidth: 5.0,
              iconAnimationType: AnimationType.onHover,
              style: ToggleStyle(
                indicatorColor: Colors.teal,
                borderColor: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              selectedIconScale: 1.0,
              onChanged: (value) {
                setState(
                  () {
                    firstSwitchValue = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
