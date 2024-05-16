import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoe_model.dart';
import 'package:shoes_app/src/pages/pages.dart';

class ShoeSizePreview extends StatelessWidget {
  final bool? fullScreen;
  const ShoeSizePreview({super.key, this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullScreen!) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShoeDescPage(),
              ));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: fullScreen! ? 0 : 30,
          vertical: fullScreen! ? 0 : 5,
        ),
        child: Container(
          width: double.infinity,
          height: fullScreen! ? 420 : 440,
          decoration: BoxDecoration(
              color: const Color(0xFFF8C946),
              borderRadius: fullScreen!
                  ? const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))
                  : BorderRadius.circular(50)),
          child: Column(
            children: [
              const _ShoeShadow(),
              if (!fullScreen!) const _ShoesSizes(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShoesSizes extends StatelessWidget {
  const _ShoesSizes();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ShoeSizesBox(7),
          _ShoeSizesBox(7.5),
          _ShoeSizesBox(8),
          _ShoeSizesBox(8.5),
          _ShoeSizesBox(9),
          _ShoeSizesBox(9.5),
        ],
      ),
    );
  }
}

class _ShoeSizesBox extends StatelessWidget {
  final double sizes;

  const _ShoeSizesBox(this.sizes);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    return GestureDetector(
      onTap: () {
        final shoeModel = Provider.of<ShoeModel>(context, listen: false);
        shoeModel.talla = sizes;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: (sizes == shoeModel.talla)
                ? const Color(0xFFF1a23a)
                : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              if (sizes == shoeModel.talla)
                const BoxShadow(
                    color: Color(0xffffa23a),
                    blurRadius: 10,
                    offset: Offset(0, 5))
            ]),
        child: Text(
          sizes.toString().replaceAll('.0', ''),
          style: TextStyle(
              color: (sizes == shoeModel.talla)
                  ? Colors.white
                  : const Color(0xFFF09415),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow();

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          const Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadows(),
          ),
          Image.asset(shoeModel.assetImage)
        ],
      ),
    );
  }
}

class _ShoeShadows extends StatelessWidget {
  const _ShoeShadows();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 200,
        height: 125,
        decoration: const BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(100)),
            boxShadow: [BoxShadow(color: Color(0xffeaa14e), blurRadius: 40)]),
      ),
    );
  }
}
