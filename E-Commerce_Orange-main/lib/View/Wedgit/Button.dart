import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onTap;

  const CustomButton({
    required this.buttonText,
    required this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: 65,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xfffc7444),
        ),
        child: MaterialButton(
          onPressed: onTap,
          child: Text(buttonText,
              style: const TextStyle(
                fontFamily: 'muli',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
        ),
      ),
    );
  }
}
