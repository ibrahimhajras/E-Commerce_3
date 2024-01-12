import 'package:flutter/material.dart';

import '../../../../data/Static/static.dart';

class SpecialComponents extends StatelessWidget {
  const SpecialComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemCount: specialModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    specialModelList[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 340,
                  height: 140,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 20),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black.withOpacity(0.35),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(specialModelList[index].title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      Text(
                        "${specialModelList[index].brandCount}${specialModelList[index].subTitle}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}