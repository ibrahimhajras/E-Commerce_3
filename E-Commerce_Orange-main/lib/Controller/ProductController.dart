import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../Model/ProductModel.dart';
import 'package:http/http.dart' as http;

class ProductController extends ChangeNotifier{
  List<Product> productList=[];
  getProduct() async {
    EasyLoading.show(status: 'loading...');
    productList=[];
    http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products/'));
    EasyLoading.dismiss();
    if(response.statusCode==200) {
      var jsonBody = jsonDecode(response.body);
      var products = jsonBody as List;
      for (Map<String, dynamic> productData in products) {
        productList.add(Product.fromJson(productData));
      }
    }
      else
      {print("11");}
      notifyListeners();
    }
  }