import "package:flutter/material.dart";

class ProfileImage extends StatelessWidget
{
  const ProfileImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "picture",
          child: Image.network("https://banner2.cleanpng.com/20180329/zue/kisspng-computer-icons-user-profile"
              "-person-5abd85306ff7f7.0592226715223698404586.jpg"),
        ),
      ),
    );
  }
}