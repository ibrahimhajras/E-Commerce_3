import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage:
            AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -5,
            child: SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Colors.white),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: const BorderSide(
                                  color: Colors.white, width: 3)
                            // side: const BorderSide(color: Colors.white),
                          ))),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                      "assets/icons/icons/Camera Icon.svg")),
            ),
          ),
        ],
      ),
    );
  }
}