import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  void Function()? onPressed;

  CustomButtom({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 400,
      height: 50,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.deepPurple[300],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}