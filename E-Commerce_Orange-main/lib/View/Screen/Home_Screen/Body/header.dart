import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SearchBar(
            backgroundColor:
            MaterialStatePropertyAll(Colors.grey.shade200),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            leading: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            elevation: MaterialStateProperty.all(0),
            hintText: "Search...",
            hintStyle: const MaterialStatePropertyAll(
                TextStyle(color: Colors.grey)),
          ),
          const Spacer(),
          IconButton(
              style: ButtonStyle(
                fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                backgroundColor:
                MaterialStatePropertyAll(Colors.grey.shade200),
                shape: const MaterialStatePropertyAll(CircleBorder()),
              ),
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon:
              SvgPicture.asset("assets/icons/icons/Cart Icon.svg")),
          const Spacer(),
          Stack(children: [
            IconButton(
                style: ButtonStyle(
                  fixedSize:
                  const MaterialStatePropertyAll(Size(50, 50)),
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.grey.shade200),
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                ),
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/icons/Bell.svg")),
            Positioned(
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: Text(
                  "$_counter",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
