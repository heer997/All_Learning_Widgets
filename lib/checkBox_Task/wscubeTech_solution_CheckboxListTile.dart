// import "package:flutter/material.dart";
// import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "CheckboxListTile",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.grey,
//           centerTitle: true,
//         ),
//       ),
//       home: const WscubeTechSolutionOfCheckboxListTile(),
//     );
//   }
// }
//
// class WscubeTechSolutionOfCheckboxListTile extends StatefulWidget {
//   const WscubeTechSolutionOfCheckboxListTile({super.key});
//
//   @override
//   State<WscubeTechSolutionOfCheckboxListTile> createState() {
//     return WscubeTechSolutionOfCheckboxListTileState();
//   }
// }
//
// class WscubeTechSolutionOfCheckboxListTileState
//     extends State<WscubeTechSolutionOfCheckboxListTile> {
//   bool value = false;
//   bool value1 = false;
//   bool value2 = false;
//   bool value3 = false;
//   bool value4 = false;
//   bool isselected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: UiHelper.customAppBar("CheckboxListTile"),
//       body: Column(
//         children: [
//           CheckboxListTile(
//             value: value,
//             onChanged: (newvalue) {
//               setState(
//                 () {
//                   value = newvalue!;
//                   isselected = true;
//                 },
//               );
//             },
//             enabled: isselected ? false : true,
//           ),
//           CheckboxListTile(
//             value: value1,
//             onChanged: (newvalue) {
//               setState(
//                 () {
//                   value1 = newvalue!;
//                   isselected = true;
//                 },
//               );
//             },
//             enabled: isselected ? false : true,
//           ),
//           CheckboxListTile(
//             value: value2,
//             onChanged: (newvalue) {
//               setState(
//                 () {
//                   value2 = newvalue!;
//                   isselected = true;
//                 },
//               );
//             },
//             enabled: isselected ? false : true,
//           ),
//           CheckboxListTile(
//             value: value3,
//             onChanged: (newvalue) {
//               setState(
//                 () {
//                   value3 = newvalue!;
//                   isselected = true;
//                 },
//               );
//             },
//             enabled: isselected ? false : true,
//           ),
//           CheckboxListTile(
//             value: value4,
//             onChanged: (newvalue) {
//               setState(
//                 () {
//                   value4 = newvalue!;
//                   isselected = true;
//                 },
//               );
//             },
//             enabled: isselected ? false : true,
//           ),
//         ],
//       ),
//     );
//   }
// }

/// Above Code is not working