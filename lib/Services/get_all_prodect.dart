// import 'dart:convert';
// import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/Api.dart';
import '../Modeles/prodect_model.dart';

class GetAllProdect {
  Future<List<ProdectModel>> getAllProdect() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProdectModel> prodectsList = [];
    for (int i = 0; i < data.length; i++) {
      prodectsList.add(
        ProdectModel.Fromjson(data[i]),
      );
    }
    return prodectsList;
  }
}

// class GetAllProdect {
//   Future<List<ProdectModel>> getAllProdect() async {
//     http.Response response =
//     await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     List<dynamic> data = jsonDecode(response.body);
//
//     List<ProdectModel> prodectsList = [];
//     for (int i = 0; i < data.length; i++) {
//       prodectsList.add(
//         ProdectModel.Fromjson(data[i]),
//       );
//     }
//     return prodectsList;
//   }
// }
