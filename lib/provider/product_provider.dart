import 'package:flutter/material.dart';
import 'package:restaurant_pr/components/messageHelper.dart';
//import 'package:restaurant_pr/model/product_model.dart';
import 'package:restaurant_pr/model/product_model.dart';
import 'package:restaurant_pr/service/product_service.dart';

class ProductProvider extends ChangeNotifier {

List<ProductModel> _productModel = [];
bool _loading = false;

List<ProductModel> get productModel => _productModel;
bool get loading => _loading;

Future<void> getProduct ()async{
try{
  final result = await ProductService().getProduct();
  if (result.length>0){
    _productModel = result;
    _loading = false;
    Messagehelper.showMessage(true,"Get product Success");
    notifyListeners();
  }
} catch(e){
  _loading = false;
  Messagehelper.showMessage(false,e.toString());
  notifyListeners();
}
}


}