import 'package:ecommerceorange/data/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../General.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/TextFieldWidget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
TextEditingController emailTextEditingController = TextEditingController();
TextEditingController passwordTextEditingController = TextEditingController();
TextEditingController confirmPasswordTextEditingController = TextEditingController();
class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              const Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Complete your details or continue\n"
                "with social media",
                textAlign: TextAlign.center,
                maxLines: 2,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 42,
              ),
              TextFieldWidget(
                  obscureText: false,
                  emailTextEditingController: emailTextEditingController,
                  labelText: "Email",
                  hintText: "Enter your Email",
                  hintIcon: "assets/icons/icons/Mail.svg"),
              TextFieldWidget(
                  obscureText: true,
                  emailTextEditingController: passwordTextEditingController,
                  labelText: "Password",
                  hintText: "Enter your Password",
                  hintIcon: "assets/icons/icons/Lock.svg"),
              TextFieldWidget(
                  obscureText: true,
                  emailTextEditingController:
                      confirmPasswordTextEditingController,
                  labelText: "Confirm Password",
                  hintText: "Re-Enter your Password",
                  hintIcon: "assets/icons/icons/Lock.svg"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                    buttonText: "Continue",
                    onTap: () async {
                      if (passwordTextEditingController.text ==
                          confirmPasswordTextEditingController.text) {
                        Get.offNamed(AppRoute.signup2);
                        print(passwordTextEditingController.text);
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("ConfirmPassword Isn't the same",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                child: const Text(
                                  "Back",
                                ),
                              )
                            ],
                          )),
                        );
                      }
                      General.savePrefString(
                          "Email", emailTextEditingController.toString());
                      General.savePrefString(
                          "Password", passwordTextEditingController.toString());
                    }),
              ),
              const SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      style: ButtonStyle(
                          fixedSize:
                              const MaterialStatePropertyAll(Size(50, 50)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey.shade300),
                          shape:
                              const MaterialStatePropertyAll(CircleBorder())),
                      // padding: const EdgeInsets.all(15),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.grey,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          "assets/icons/icons/google-icon.svg")),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade300),
                        shape: const MaterialStatePropertyAll(CircleBorder()),
                      ),
                      // padding: const EdgeInsets.all(15),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.grey,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          "assets/icons/icons/facebook-2.svg")),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade300),
                        shape: const MaterialStatePropertyAll(CircleBorder())),
                    // padding: const EdgeInsets.all(15),
                    iconSize: 30,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.grey,
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/icons/twitter.svg"),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "By continuing you're confirm that you agree\nTerm and Policy",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
