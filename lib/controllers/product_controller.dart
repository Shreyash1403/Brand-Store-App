import 'package:brand_store_app/models/mens_model.dart';
import 'package:flutter/material.dart';

class ProductController with ChangeNotifier {
  List<MensModel> mensClothesList = [
    MensModel(image: "assets/mens1.png", name: "Tagerine Shirt", price: 240.32),
    MensModel(image: "assets/mens2.png", name: "Tagerine Shirt", price: 126.47),
    MensModel(image: "assets/mens3.png", name: "Leather Coart", price: 325.36),
    MensModel(image: "assets/mens4.png", name: "Leather Coart", price: 257.85),
  ];

  List<MensModel> cartList = [];
  void addtoCart(MensModel obj) {
    cartList.add(obj);
    notifyListeners();
  }
}
