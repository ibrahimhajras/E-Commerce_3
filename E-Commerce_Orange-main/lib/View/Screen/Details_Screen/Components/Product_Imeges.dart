import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  final List<QueryDocumentSnapshot> data;
  final int index;
  const ProductImages({super.key, required this.data, required this.index});
  @override
  State<ProductImages> createState() => Product_ImagesState();
}
class Product_ImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Hero(
                  tag: widget.data[widget.index]['name'],
                  child: Image.network(widget.data[widget.index]['image'][selectedImage],height: 275,fit: BoxFit.fitHeight,))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.data[widget.index]['image'].length,
                    (index) => InkWell(
                  onTap: () {
                    selectedImage = index;
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepOrange.withOpacity(
                              selectedImage == index ? 1 : 0)),
                    ),
                    child: Image.network(widget.data[widget.index]['image'][index]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
