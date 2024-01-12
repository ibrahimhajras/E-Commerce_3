import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceorange/View/Wedgit/Button.dart';
import 'package:ecommerceorange/View/Wedgit/TextFieldWidget.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController image=TextEditingController();
    TextEditingController name=TextEditingController();
    TextEditingController price=TextEditingController();
    TextEditingController description=TextEditingController();
    CollectionReference products =FirebaseFirestore.instance.collection('Product');

    Future<void> addUser() async {
      return products.add({
        "image": image.text,
        "name" : name.text,
        "price": price.text,
        "description" : description.text,
      }).then((value) => print("user added")).catchError((error) => print("failed to add user: $error"));
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFieldWidget(emailTextEditingController: image, hintText: "", labelText: "imageURI", hintIcon: "hintIcon", obscureText: false),
            const SizedBox(height: 10,),
            TextFieldWidget(emailTextEditingController: name, hintText: "", labelText: "Name", hintIcon: "hintIcon", obscureText: false),
            const SizedBox(height: 10,),
            TextFieldWidget(emailTextEditingController: price, hintText: "", labelText: "Price", hintIcon: "hintIcon", obscureText: false),
            const SizedBox(height: 10,),
            TextFieldWidget(emailTextEditingController: description, hintText: "", labelText: "Description", hintIcon: "hintIcon", obscureText: false),
            const SizedBox(height: 10,),
            CustomButton(buttonText: "Add", onTap: (){
              addUser();
              image.clear();
              name.clear();
              price.clear();
              description.clear();
            })
          ],
        ),
      ),
    );
  }
}
