import 'package:ecommerceorange/View/Screen/FavScreen/Components/FavListView.dart';
import 'package:flutter/material.dart';

class FavBody extends StatefulWidget {
  List<dynamic> fav;
  FavBody({super.key,required this.fav});

  @override
  State<FavBody> createState() => _FavBodyState();
}

class _FavBodyState extends State<FavBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F6F9),
      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
            const Text("Favourite",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'muli'
            ),),
            const SizedBox(height: 20,),
            FavListView(fav:widget.fav),
          ],
        ),
      ),
    );
  }
}
