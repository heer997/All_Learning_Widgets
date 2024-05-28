import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/App_Drawer/Profile/Profile_Screen.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/customWidget.dart";

class AppDrawer2 {
  static appDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Jay Hanuman",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text(
              "jayhanuman345@gmail.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Lord-Hanuman.jpg"),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Natural_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          UiHelper.listTile("My File", Icons.file_copy, () {}),
          UiHelper.listTile("Shared with me", Icons.supervisor_account, () {}),
          UiHelper.listTile("Starred", Icons.star, () {}),
          UiHelper.listTile("Recent", Icons.access_time, () {}),
          UiHelper.listTile("Offline", Icons.offline_pin, () {}),
          UiHelper.listTile("Uploads", Icons.upload, () {}),
          UiHelper.listTile("Backups", Icons.backup, () {}),
          UiHelper.listTile("Trash", Icons.delete, () {}),
          const Divider(),
          UiHelper.listTile(
              "Settings & account", Icons.settings_outlined, () {}),
        ],
      ),
    );
  }
}
