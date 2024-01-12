import 'package:flutter/material.dart';
import '../../Model/CategoriesModel.dart';
import '../../Model/ProductsDetails.dart';
import '../../Model/SpecialModel.dart';
import '../../Model/onBoardingModel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_1.png"),
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_2.png"),
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_3.png"),
];
List<CategoriesModel> categoriesModelList = [
  CategoriesModel(
      icon: "assets/icons/icons/Flash Icon.svg", name: "Flash Deal"),
  CategoriesModel(icon: "assets/icons/icons/Bill Icon.svg", name: "Bill"),
  CategoriesModel(icon: "assets/icons/icons/Game Icon.svg", name: "Game"),
  CategoriesModel(icon: "assets/icons/icons/Gift Icon.svg", name: "Daily Gift"),
  CategoriesModel(icon: "assets/icons/icons/Discover.svg", name: "More"),
];
List<SpecialModel> specialModelList=[
  SpecialModel(image: "assets/images/Image Banner 2.png", title: "SmartPhone", subTitle: " Brands", brandCount: 10),
  SpecialModel(image: "assets/images/Image Banner 3.png", title: "Fashion", brandCount: 5, subTitle: " Brands")
];
List<ProductDetails> productDetailsList = [
  ProductDetails(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  ProductDetails(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  ProductDetails(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  ProductDetails(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
  ),
];