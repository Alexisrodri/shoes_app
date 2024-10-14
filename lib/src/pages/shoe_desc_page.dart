import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/helpers/helpers.dart';
import 'package:shoes_app/src/models/shoe_model.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoeDescPage extends StatelessWidget {
  const ShoeDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            const Hero(
              tag: 'Zapato-1',
              child: ShoeSizePreview(fullScreen: true),
            ),
            Positioned(
                top: 60,
                child: FloatingActionButton(
                  onPressed: () {
                    cambiarStatusDark();
                    Navigator.pop(context);
                  },
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  enableFeedback: false,
                  hoverColor: Colors.transparent,
                  disabledElevation: 0,
                  focusColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  hoverElevation: 0,
                  splashColor: Colors.transparent,
                  tooltip: 'Home',
                  child: const Icon(
                    Icons.chevron_left,
                    size: 50,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
        const Expanded(
            child: SingleChildScrollView(
                child: Column(
          children: [
            ShoeDescription(
                title: 'Nike Air Max 720',
                description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
            _MontBuyNow(),
            _ColorsAndMore(),
            _ButtonLikeCarShop()
          ],
        ))),
      ],
    ));
  }
}

class _ButtonLikeCarShop extends StatelessWidget {
  const _ButtonLikeCarShop();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _ButtonShadow(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.shopping_cart_checkout,
              color: Colors.grey.withOpacity(0.4),
              size: 25,
            ),
          ),
          _ButtonShadow(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey.withOpacity(0.5),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonShadow extends StatelessWidget {
  final Icon icon;

  const _ButtonShadow({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon,
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  const _ColorsAndMore();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 90,
                  child: _ButtonColor(
                      Color(0xFFC6D642), 1, 'assets/imgs/air-max/verde.png')),
              Positioned(
                  left: 60,
                  child: _ButtonColor(Color(0xFFFFAD29), 2,
                      'assets/imgs/air-max/amarillo.png')),
              Positioned(
                  left: 30,
                  child: _ButtonColor(
                      Color(0xFF2099F1), 3, 'assets/imgs/air-max/azul.png')),
              Positioned(
                  child: _ButtonColor(
                      Color(0xFF364D56), 4, 'assets/imgs/air-max/negro.png')),
            ],
          )),
          ButtonOrange(
            text: 'More related items',
            heigth: 30,
            width: 170,
            color: Color(0xffffc675),
          )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String assetImage;

  const _ButtonColor(this.color, this.index, this.assetImage);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final shoeModel = Provider.of<ShoeModel>(context, listen: false);
          shoeModel.assetImage = assetImage;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class _MontBuyNow extends StatelessWidget {
  const _MontBuyNow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            const Text(
              '\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Bounce(
              delay: const Duration(seconds: 1),
              from: 8,
              child: const ButtonOrange(
                text: 'Buy now',
                heigth: 35,
                width: 120,
              ),
            )
          ],
        ),
      ),
    );
  }
}
