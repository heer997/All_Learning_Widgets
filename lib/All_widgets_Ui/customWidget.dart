import "package:flutter/material.dart";

class UiHelper {
  static listTile(String text, IconData iconData, VoidCallback callback) {
    return ListTile(
      title: Text(text),
      // subtitle: Text(text2),
      leading: Icon(iconData),
      onTap: callback,
    );
  }

  static elevatedButton(VoidCallback callback, String text) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        fixedSize: const Size(300.0, 50.0),
        shape: const LinearBorder(),
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
      ),
    );
  }

  static container(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }

  static container2({required Color color}) {
    return Card(
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11.0),
        ),
      ),
    );
  }

  static customAppBar(String text) {
    return AppBar(
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  static snackbar(BuildContext context, String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

// static customNavigation(BuildContext context) {
//   return Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) {
//         return context;
//       },
//     ),
//   );
// }
}
