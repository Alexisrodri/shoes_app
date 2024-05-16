import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: const BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: const Column(
          children: [_ShoeShadow()],
        ),
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
          Image.asset('assets/imgs/azul.png')
        ],
      ),
    );
  }
}
