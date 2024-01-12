
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20)),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A summer surprise",
                style: TextStyle(color: Colors.white, fontSize: 17)),
            Spacer(),
            Text("CashBack 20%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700)),
          ]),
    );
  }
}
