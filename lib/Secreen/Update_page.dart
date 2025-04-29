//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:storeapp/Modeles/prodect_model.dart';
import '../Services/update_prodect.dart';
import '../Widgets/Custom_Buttom.dart';
import '../Widgets/Custom_TextFormField.dart';

class UpdateProdectPage extends StatefulWidget {
  UpdateProdectPage({super.key});

  static String id = "UpdateProdectPage";

  @override
  State<UpdateProdectPage> createState() => _UpdateProdectPageState();
}

class _UpdateProdectPageState extends State<UpdateProdectPage> {
  String? Prodect_Name, description, image;
  double? price;

  bool Isloading = false;

  @override
  Widget build(BuildContext context) {
    ProdectModel prodect =
        ModalRoute.of(context)!.settings.arguments as ProdectModel;

    return ModalProgressHUD(
      inAsyncCall: Isloading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Update Prodect",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  Hint: "Prodect Name",
                  onchanged: (data) {
                    Prodect_Name = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  Hint: "description",
                  onchanged: (data) {
                    description = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  Hint: "image",
                  onchanged: (data) {
                    image = data;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  Hint: "price",
                  onchanged: (data) {
                    price = double.tryParse(data) ?? 0.0;
                  },
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButtom(
                  title: 'Update',
                  onPressed: () async{
                    Isloading = true;
                    setState(() {});
                    try {
                    await  Function_Update_Prodect(prodect);
                      print("sucsess");
                    } catch (e) {
                      print("there are an erorr${e}");
                    }
                    Isloading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> Function_Update_Prodect(ProdectModel prodect) async{
   await UpdateProdect().updateProdect (
      //title: Prodect_Name??prodect.title  يوجد طريقتين ,
      title: Prodect_Name == null ? prodect.title : Prodect_Name!,
      desc: description ?? prodect.description,
      price: price ?? prodect.price,
      image: image ?? prodect.image,
      category: prodect.category,
     id :prodect.id,
    );
  }
}
