import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TopRoundedContainer.dart';
import 'add_To_Cart_Button.dart';

class ProductColors extends StatefulWidget {
  final int index;
  final List<QueryDocumentSnapshot> data;
  const ProductColors({super.key, required this.index, required this.data});
  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  int colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return topRoundedContainer(
      color: const Color(0xffF5F6F9),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                ...List.generate(
                  widget.data[widget.index]['colors'].length,
                  (index) => InkWell(
                    onTap: () {
                      colorIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 2),
                      padding: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: index == colorIndex
                                ? Colors.deepOrange
                                : Colors.transparent),
                        shape: BoxShape.circle,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(widget.data[widget.index]['colors'][index]),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                    child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/icons/remove.svg",colorFilter: const ColorFilter.mode(Colors.deepOrange,BlendMode.srcIn),))),
                const SizedBox(width: 20,),
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
                    child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/icons/Plus Icon.svg",colorFilter: const ColorFilter.mode(Colors.deepOrange,BlendMode.srcIn),))),

              ],
            ),
          ),
          const AddToCartButton(),
        ],
      ),
    );
  }
}