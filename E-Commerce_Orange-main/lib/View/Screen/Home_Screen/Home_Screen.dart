import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceorange/View/Screen/FavScreen/FavScreen.dart';
import 'package:ecommerceorange/View/Screen/ProfileScreen/Profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Body/Home_Body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<dynamic> favList=[];
List<QueryDocumentSnapshot> data=[];
getData() async{
  QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("Product").get();
  data.addAll(querySnapshot.docs);
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getData();
    setState(() {});
    super.initState();
  }
  int cIndex=0;
  Widget homeBody=HomeBody(fav: favList,data: data,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: homeBody,
      ),
      ///Bottom Navigation Bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 85,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  offset: const Offset(0, -10),
                  blurRadius: 100),
            ],
            borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/Shop Icon.svg"),
                  label: "1" ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/Heart Icon.svg"),
                  label: "2"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      "assets/icons/icons/Chat bubble Icon.svg"),
                  label: "3"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/User Icon.svg"),
                  label: "4"),
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            currentIndex: cIndex,
            onTap: (value) {
              setState(() {
                cIndex=value;
              if(cIndex==0) {
                homeBody= HomeBody(fav:favList,data:data);
              }else if(cIndex==1){
                homeBody= FavBody(fav:favList);
              } else if(cIndex==3) {
                homeBody=const ProfileScreen();
              }});
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(color: Colors.deepOrange),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
