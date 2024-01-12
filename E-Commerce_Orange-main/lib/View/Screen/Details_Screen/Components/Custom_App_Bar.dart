import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final List<dynamic> data;

  final int index;

  const CustomAppBar({
    super.key,
    required this.data, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 75,
      leading: IconButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/icons/Back ICon.svg",
            width: 20,
            height: 20,
          )),
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          width: 65,
          height: 30,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${data[index]['rating']}'),
              SvgPicture.asset("assets/icons/icons/Star Icon.svg"),
            ],
          ),
        )
      ],
    );
  }
}
