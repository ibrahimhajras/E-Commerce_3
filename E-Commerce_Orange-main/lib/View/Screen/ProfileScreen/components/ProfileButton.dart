import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
    required this.icon,
    this.press,
  });

  final String text;
  final String icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          iconColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(children: [
          SvgPicture.asset(
            icon,
            colorFilter:
                const ColorFilter.mode(Colors.deepOrange, BlendMode.srcIn),
            width: 22,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.grey,fontFamily: 'muli'),
            ),
          ),
          const Icon(Icons.arrow_forward_ios),
        ]),
      ),
    );
  }
}
