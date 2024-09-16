import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:restaurant_pr/model/product_model.dart';

class ProductService {
  Future<List<ProductModel>> getProduct() async {
    try {
      final result = await rootBundle.loadString('assets/images/product.json');
      var jsonData = json.decode(result);
      //final data = jsonData.map((e) => ProductModel.fromJson(e));
      final data = await ProductModelFromJson(result);
      print(jsonData);
      return data;
    } catch (e) {
      print(e);
      rethrow;
      //return null;
    }
  }
}
