import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceorange/View/Screen/Details_Screen/Components/Product_Imeges.dart';
import 'package:flutter/material.dart';
import 'Components/Custom_App_Bar.dart';
import 'Components/Product_Description.dart';

class DetailsScreen extends StatefulWidget {
  final List<QueryDocumentSnapshot> data;
  const DetailsScreen({super.key, required this.index,required this.data});
  final int index;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(data: widget.data,index:widget.index)),
      backgroundColor: const Color(0xffF5F6F9),
      body: SafeArea(
        child: ListView(
          children: [
            ProductImages(data: widget.data,index:widget.index),
            const SizedBox(height: 20,),
            ProductDescription(data: widget.data,index:widget.index),
          ],
        ),
      ),
    );
  }
}