
import 'package:ecommerceorange/data/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle( color: Colors.grey),
        ),
        InkWell(
          child: const Text(
            "Sign Up ",
            style: TextStyle(
                color: Colors.deepOrange),
          ),
          onTap: () {
            Get.offNamed(AppRoute.signup);
          },
        ),
      ],
    );
  }
}
