
import 'package:ecommerceorange/data/AppRoutes.dart';
import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Wedgit/Button.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

late int dotWidth;
int cIndex = 0;

class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
            height: h,
            child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            onBoardingList[1].title!,
            style: const TextStyle(

              color: Color(0xfffc7444),
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
          Text(
            onBoardingList[1].body!,
            style: const TextStyle(

              color: Color(0xff949494),
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
            ///Use MediaQuery without expanded
            SizedBox(
              height: 350,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    cIndex = value;
                  });
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Image.asset(
                      onBoardingList[index].image!,
                      width: 300,
                      height: 330,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h*0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                          onBoardingList.length, (index) => dotBuilder(index))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 35,
                    ),
                    child: CustomButton(
                      buttonText: cIndex < onBoardingList.length - 1
                          ? "Continue"
                          : "Next",
                      onTap: () {
                        if (cIndex == onBoardingList.length - 1) {
                          Get.toNamed(AppRoute.login);
                        }
                        _controller!.nextPage(
                            duration: const Duration(microseconds: 100),
                            curve: Curves.bounceIn);
                      },
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
          )),
    );
  }

  AnimatedContainer dotBuilder(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(microseconds: 900),
      width: index == cIndex ? 25 : 10,
      height: 10,
      decoration: BoxDecoration(
          color: cIndex == index
              ? const Color(0xfffc7444)
              : const Color(0xc3757575),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
