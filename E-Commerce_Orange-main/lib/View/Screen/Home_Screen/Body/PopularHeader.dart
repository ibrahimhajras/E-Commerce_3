import 'package:flutter/material.dart';

class PopularHeader extends StatelessWidget {
  const PopularHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Popular Product",
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