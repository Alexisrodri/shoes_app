import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: const BoxDecoration(
            color: Color(0xFFF8C946),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: const Column(
          children: [
            _ShoeShadow(),
            _ShoesSizes(),
          ],
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
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration:   BoxDecoration(
          color: (sizes == 9) ? const Color(0xFFF1a23a) : Colors.white ,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            if(sizes == 9)
             const BoxShadow(
              color: Color(0xffffa23a),
              blurRadius: 10,
              offset: Offset(0, 5)
            )
            
          ]),
      child: Text(
        sizes.toString().replaceAll('.0', ''),
        style:   TextStyle(
            color:(sizes == 9) ? Colors.white : const Color(0xFFF09415),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          const Positioned(
            bottom: 20,
            right: 0,
            child: _ShoeShadows(),
          ),
          Image.asset('assets/imgs/azul.png')
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
