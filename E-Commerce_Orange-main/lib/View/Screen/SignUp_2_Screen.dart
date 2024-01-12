import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceorange/General.dart';
import 'package:ecommerceorange/View/Screen/SIgnUp_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/AppRoutes.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/TextFieldWidget.dart';
class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});
  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}
class _SignUp2ScreenState extends State<SignUp2Screen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email=emailTextEditingController;
    TextEditingController password=passwordTextEditingController;
    TextEditingController firstNameTextEditingController = TextEditingController();
    TextEditingController lastNameTextEditingController = TextEditingController();
    TextEditingController phoneTextEditingController = TextEditingController();
    TextEditingController addressTextEditingController = TextEditingController();
    CollectionReference users =FirebaseFirestore.instance.collection('Users');

    Future<void> addUser() async {
      return users.add({
        "Email": email.text,
        "Password" : password.text,
        "FirstName": firstNameTextEditingController.text,
        "LastName" : lastNameTextEditingController.text,
        "Phone" : phoneTextEditingController.text,
        "Address" : addressTextEditingController.text
      }).then((value) => print("user added")).catchError((error) => print("failed to add user: $error"));
    }
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Complete Profile',
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
                style: TextStyle( color: Colors.grey),
              ),
              const SizedBox(
                height: 38,
              ),
              TextFieldWidget(
                obscureText: false,
                  emailTextEditingController: firstNameTextEditingController,
                  labelText: "First Name",
                  hintText: "Enter your first name",
                  hintIcon: "assets/icons/icons/User.svg"),
              TextFieldWidget(
                  obscureText: false,
                  emailTextEditingController: lastNameTextEditingController,
                  labelText: "Last Name",
                  hintText: "Enter your last name",
                  hintIcon: "assets/icons/icons/User.svg"),
              TextFieldWidget(
                  obscureText: false,
                  emailTextEditingController:
                      phoneTextEditingController,
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                  hintIcon: "assets/icons/icons/Phone.svg"),
              TextFieldWidget(
                  obscureText: false,
                  emailTextEditingController:
                      addressTextEditingController,
                  labelText: "Address",
                  hintText: "Enter your address",
                  hintIcon: "assets/icons/icons/Location point.svg"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(buttonText: "Continue", onTap: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email.text,
                      password: password.text,
                    );
                    addUser();
                    Get.offAllNamed(AppRoute.login);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }

                  General.savePrefString("Name", "$firstNameTextEditingController $lastNameTextEditingController");
                  General.savePrefString("Phone", "$phoneTextEditingController");
                  General.savePrefString("Address", "$addressTextEditingController");
                }),
              ),
              const SizedBox(
                height: 65,
              ),
              const Text(
                "By continuing you're confirm that you agree\nwith our Term and Condition",
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
