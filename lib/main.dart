import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Secreen/HomePage.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homepage.id,
      routes: {
        Homepage.id:(context)=>Homepage(),
      },


    );
  }
}
