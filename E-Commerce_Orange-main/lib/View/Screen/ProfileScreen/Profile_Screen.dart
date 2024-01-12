import 'package:ecommerceorange/View/Screen/ProfileScreen/components/ProfileMenu.dart';
import 'package:flutter/material.dart';
import 'components/ProfileImage.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfileImage(),
            SizedBox(
              height: 20,
            ),
            ProfileMenu(),
          ],
        ),
      ),
    );
  }
}
