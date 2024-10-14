import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class AddCarShop extends StatelessWidget {
  final double total;

  const AddCarShop({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(100))),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              '\$$total',
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Spacer(),
            const ButtonOrange(
              text: 'Add to cart',
              heigth: 50,
              width: 120,
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
