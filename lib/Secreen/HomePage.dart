import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/Modeles/prodect_model.dart';

import '../Services/get_all_prodect.dart';
import '../Widgets/Custom_Card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static String id = "homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Trend",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(right: 16, top: 35, left: 16),
            child: FutureBuilder<List<ProdectModel>>(
              future: GetAllProdect().getAllProdect(),
              builder: (context, snapshot) {

                  return GridView.builder(
                    clipBehavior: Clip.none,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return CustomCard();
                    },
                  );



              },)
        ),
      ),
    );
  }
}
