//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Modeles/prodect_model.dart';
import 'package:storeapp/Secreen/Update_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.prodect});

  final ProdectModel prodect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProdectPage.id, arguments: prodect);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 40,
                  spreadRadius: 0,
                  offset: const Offset(10, 10),
                ),
              ],
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "svsd",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${prodect.price}'),
                        // تعديل هنا
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -30,
            right: 15,
            child:Image.network(prodect.image,height: 100,width: 100,)

          ),
        ],
      ),
    );
  }
}

// CachedNetworkImage(
//               imageUrl: prodect.image,
//               placeholder: (context, url) => CircularProgressIndicator(),
//               errorWidget: (context, url, error) => Icon(Icons.error),
//             )


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:storeapp/Modeles/prodect_model.dart';
//
// class CustomCard extends StatelessWidget {
//   CustomCard({super.key, required this.prodect});
//
//   ProdectModel prodect;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(clipBehavior: Clip.none, children: [
//       Container(
//         decoration: BoxDecoration(boxShadow: [
//           BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               blurRadius: 40,
//               spreadRadius: 0,
//               offset: Offset(10, 10))
//         ]),
//         child: Card(
//           elevation: 10,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "HandBag lv",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(prodect.price as String),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.favorite,
//                       ),
//                       color: Colors.red,
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         top: -30,
//         right: 15,
//         child: Image.network(
//           prodect.image,
//           height: 80,
//           width: 80,
//         ),
//       ),
//     ]);
//   }
// }
