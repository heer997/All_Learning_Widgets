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
      title: "Stepper Widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
      ),
      home: const StepperWidgetPractice(),
    );
  }
}

class StepperWidgetPractice extends StatefulWidget {
  const StepperWidgetPractice({super.key});

  @override
  State<StepperWidgetPractice> createState() => _StepperWidgetPracticeState();
}

class _StepperWidgetPracticeState extends State<StepperWidgetPractice> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.customAppBar("Stepper Widget"),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text("Step 1"),
              content: const Text(
                "Information for Step 1",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text("Step 2"),
              content: const Text(
                "Information for Step 2",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text("Step 3"),
              content: const Text(
                "Information for Step 3",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Step(
              isActive: _currentStep == 3,
              title: const Text("Step 4"),
              content: const Text(
                "Information for Step 4",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
          onStepTapped: (value) {
            setState(() {
              _currentStep = value;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(
                () {
                  _currentStep += 1;
                },
              );
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(
                () {
                  _currentStep -= 1;
                },
              );
            }
          },
          // type: StepperType.horizontal,
        ),
      ),
    );
  }
}
