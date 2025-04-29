import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:storeapp/Modeles/prodect_model.dart';
import 'package:storeapp/helper/Api.dart';

class AddProdect {
  Future<ProdectModel> addProdect({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await
    Api().post(
        url: "https://fakestoreapi.com/products",
        body: {
          "title": title,
          "price": price,
          "description": desc,
          "image": image,
          "category": category,
        });
    return ProdectModel.fromJson(data);
  }
}
