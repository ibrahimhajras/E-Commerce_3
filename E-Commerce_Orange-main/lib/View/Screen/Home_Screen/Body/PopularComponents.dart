import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Details_Screen/Details_Screen.dart';
import '../Home_Screen.dart';

class PopularComponents extends StatefulWidget {
  const PopularComponents({super.key});

  @override
  State<PopularComponents> createState() => _PopularComponentsState();
}

class _PopularComponentsState extends State<PopularComponents> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 295,
      child: ListView.builder(
        itemCount: data.length,
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(index: index, data: data),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: //Hero(
                          // tag: productList[index].id,
                          Image.network(
                        data[index]['image'][0],
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //),
                  SizedBox(
                    width: 145,
                    child: Text(
                      data[index]['name'],
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 162,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$${data[index]['price']}",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            fixedSize:
                                const MaterialStatePropertyAll(Size(20, 20)),
                            backgroundColor: MaterialStatePropertyAll(
                              favList.contains(data[index])
                                  ? const Color(0x35ff2415)
                                  : const Color(0x88ffffff),
                            ),
                            shape:
                                const MaterialStatePropertyAll(CircleBorder()),
                          ),
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            favList.contains(data[index])
                                ? favList.remove(data[index])
                                : favList.add(data[index]);
                            setState(() {});
                          },
                          icon: SvgPicture.asset(
                              "assets/icons/icons/Heart Icon_2.svg",
                              colorFilter: ColorFilter.mode(
                                  favList.contains(data[index])
                                      ? const Color(0xfff80505)
                                      : Colors.grey,
                                  BlendMode.srcIn)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
