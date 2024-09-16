import 'dart:convert';

List<ProductModel> ProductModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

class ProductModel {
  final String? productId;
  final String? name;
  final String? detail;
  final int? amount;
  final int? price;
  final String? images;

  ProductModel({
    this.productId,
    this.name,
    this.detail,
    this.amount,
    this.price,
    this.images,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productId: json['productId'],
        name: json['name'],
        detail: json['detail'],
        amount: int.parse(json['amount'].toString()),
        price: int.parse(json['price'].toString()),
        images: json['image'],
      );
  Map<String, dynamic> toJson() => {
        "productId": productId,
        "name": name,
        "detail": detail,
        "amount": amount,
        "price": price,
        "images": images,
      };
}
