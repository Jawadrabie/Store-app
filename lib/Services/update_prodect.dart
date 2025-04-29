import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:storeapp/Modeles/prodect_model.dart';
import 'package:storeapp/helper/Api.dart';


class UpdateProdect {
  Future<ProdectModel> updateProdect({
    required String title,
    required double price,
    required String desc,
    required String image,
    required String category,
    required int id,
  }) async {
    Map<String, dynamic> data = await
    Api().put(
        url:"https://fakestoreapi.com/products/$id",
        body: {
          "title": title,
          "price": price.toString(),
          "description": desc,
          "image": image,
          "category": category,
        });

    return ProdectModel.fromJson(data);
  }

}
