import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIconButton extends StatelessWidget {
   SocialIconButton({
    super.key,
    required this.icon,
  });
   final String icon;

  @override
  Widget build(BuildContext context) {

    return IconButton(
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
      icon: SvgPicture.asset(icon),
    );
  }
}
