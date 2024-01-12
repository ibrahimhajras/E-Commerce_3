import 'package:ecommerceorange/data/AppRoutes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/SocialButton.dart';
import '../Wedgit/TextFieldWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome back',
                style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Sign in with your Email & password\n"
                "or continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle( color: Colors.grey),
              ),
              const SizedBox(
                height: 75,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Row(
                  children: [
                    //deepOrange color for checked
                    Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = value!;
                        });
                      },
                      fillColor: const MaterialStatePropertyAll(Colors.grey),
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(

                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.forget);
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(

                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///enroll the padding inside custom button
              CustomButton(
                  buttonText: "Continue",
                  onTap: () async {
                    try {
                      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailTextEditingController.text,
                          password: passwordTextEditingController.text,
                      );
                      Get.offAllNamed(AppRoute.home);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('======================No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('======================Wrong password provided for that user.');
                      }
                    }

                  }),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(icon:"assets/icons/icons/google-icon.svg"),
                  const SizedBox(
                    width: 20,
                  ),
                  SocialIconButton(icon:"assets/icons/icons/facebook-2.svg"),
                  const SizedBox(
                    width: 20,
                  ),
                  SocialIconButton(icon:"assets/icons/icons/twitter.svg"),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
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
                      Get.toNamed(AppRoute.signup);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}