import 'package:ecommerceorange/data/AppRoutes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ProfileButton.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileButton(
          text: "My Account",
          icon: "assets/icons/icons/User Icon.svg",
          press: () => {},
        ),
        ProfileButton(
          text: "Notifications",
          icon: "assets/icons/icons/Bell.svg",
          press: () {},
        ),
        ProfileButton(
          text: "Settings",
          icon: "assets/icons/icons/Settings.svg",
          press: () {},
        ),
        ProfileButton(
          text: "Help Center",
          icon: "assets/icons/icons/Question mark.svg",
          press: () {},
        ),
        ProfileButton(
          text: "Log Out",
          icon: "assets/icons/icons/Log out.svg",
          press: ()async {
            await FirebaseAuth.instance.signOut();
            Get.offAllNamed(AppRoute.login);
          },
        ),
      ],
    );
  }
}
