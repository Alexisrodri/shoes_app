import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final double width;
  final double heigth;
  final String text;

  const ButtonOrange({
  super.key,
  required this.text, 
  this.width = 50, 
  this.heigth = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: heigth,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(40)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
