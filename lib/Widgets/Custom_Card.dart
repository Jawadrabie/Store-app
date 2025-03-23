import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Stack CustomCard() {
  return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(

          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 40,
                spreadRadius: 0,
                offset: Offset(10, 10))
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HandBag lv",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r"$225"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                        ),
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -30,
          right: 15,
          child: Image.network(
            "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
            height: 80,
          ),
        ),
      ]);
}