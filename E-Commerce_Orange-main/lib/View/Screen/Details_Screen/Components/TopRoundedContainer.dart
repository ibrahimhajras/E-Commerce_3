import 'package:flutter/material.dart';

class topRoundedContainer extends StatelessWidget {
  const topRoundedContainer({super.key,required this.child,required this.color});
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50))),
        width: MediaQuery.of(context).size.width,
        child: child,
    );
  }
}
