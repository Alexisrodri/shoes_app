import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoeDescPage extends StatelessWidget {
   
  const ShoeDescPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Column(
        children: [
          ShoeSizePreview(fullScreen: true,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShoeDescription(
                    title: 'Nike Air Max 720', 
                    description:"The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                  _MontBuyNow()
                ],
              )
            )
          ),
        ],
      )
    );
  }
}

class _MontBuyNow extends StatelessWidget {
  const _MontBuyNow();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:30 ),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Row(
          children: [
            Text('\$180.0',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            Spacer(),
            ButtonOrange(text: 'Buy now',heigth: 35,width: 120 ,)
          ],
        ),
      ),
    );
  }
}