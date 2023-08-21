// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
//Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        alignment: Alignment.center,
        //padding: const EdgeInsets.only(left: 9),
        color: color,
        width: double.infinity,
        height: 170,
        child: Text(
          
          text!,
          style: const TextStyle(fontSize: 40, color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
