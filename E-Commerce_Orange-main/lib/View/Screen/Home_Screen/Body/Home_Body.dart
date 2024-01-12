import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceorange/View/Screen/Home_Screen/Body/PopularComponents.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'ImageBanner.dart';
import 'PopularHeader.dart';
import 'SpecialComponents.dart';
import 'SpecialHeader.dart';
import 'header.dart';

class HomeBody extends StatefulWidget {
  List<dynamic> fav;
  List<QueryDocumentSnapshot> data;

  HomeBody({super.key, required this.fav, required this.data});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [Header(counter: _counter),
            const SizedBox(height: 30),
            const ImageBanner(),
            const SizedBox(height: 30),
            const Categories(),
            const SpecialHeader(),
            const SizedBox(height: 20),
            const SpecialComponents(),
            const SizedBox(height: 30),
            const PopularHeader(),
            const SizedBox(height: 20),
            const PopularComponents(),
          ],
        ),
      ),
    );
  }
}
