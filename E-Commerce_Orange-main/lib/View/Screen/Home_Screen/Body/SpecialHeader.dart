import 'package:flutter/material.dart';

class SpecialHeader extends StatelessWidget {
  const SpecialHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Special For You",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          InkWell(
            child: const Text(
              "See More",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}