import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../Wedgit/Button.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We send your code to +962 788828337\n"
                "This code will expired in 15 seconds",
                textAlign: TextAlign.center,
                maxLines: 2,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle( color: Colors.grey),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: OtpTextField(
                  cursorColor: Colors.deepOrange,
                  styles: const [
                    TextStyle(

                      height: 2,
                    ),
                    TextStyle(

                      height: 2,
                    ),
                    TextStyle(

                      height: 2,
                    ),
                    TextStyle(

                      height: 2,
                    ),
                  ],
                  focusedBorderColor: Colors.deepOrange,
                  showFieldAsBox: true,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  fieldWidth: 70,
                  borderRadius: BorderRadius.circular(20),
                  enabledBorderColor: Colors.black26,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(buttonText: "Check", onTap: () {}),
              ),
              const SizedBox(
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ReSend OTP Code ",
                    style: TextStyle( color: Colors.grey),
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
