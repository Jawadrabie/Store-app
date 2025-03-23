import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:storeapp/Modeles/prodect_model.dart';
import 'package:storeapp/helper/Api.dart';

class GetGategory {
  Future<List<ProdectModel>> getGategry({required gatogoryName}) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$gatogoryName");

    List<ProdectModel> prodectsList = [];
    for (int i = 0; i < data.length; i++) {
      prodectsList.add(
        ProdectModel.Fromjson(data[i]),
      );
    }
    return prodectsList;
  }
}

// class GetGatogory {
//   Future<List<dynamic>> getGatogory({gatogoryName}) async {
//       List<dynamic> data = await Api().get(uri: "https://fakestoreapi.com/products/category/$gatogoryName");
//       List<ProdectModel> prodectList = [];
//       for (int i = 0; i < data.length; i++) {
//         prodectList.add(ProdectModel.Fromjson(data[i]));
//       }
//       return prodectList;
//
//   }
// }
