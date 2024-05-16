import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final String text;

  const ButtonOrange({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(40) 
      ),
      child: Text(text,style: const TextStyle(color: Colors.white),),
    );
  }
}
