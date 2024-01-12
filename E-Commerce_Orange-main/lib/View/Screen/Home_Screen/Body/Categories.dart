import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/Static/static.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        itemCount: categoriesModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              IconButton(
                style: ButtonStyle(
                  fixedSize:
                  const MaterialStatePropertyAll(Size(60, 60)),
                  backgroundColor: MaterialStatePropertyAll(
                      Colors.orange.withOpacity(0.2)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: SvgPicture.asset(categoriesModelList[index].icon),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: SizedBox(
                    width: 50,
                    child: Text(
                      categoriesModelList[index].name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.grey),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}