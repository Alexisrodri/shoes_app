import 'package:flutter/material.dart';
import 'package:shoes_app/src/helpers/helpers.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbar(text: 'For you'),
          SizedBox(height: 20),
          Expanded(
              child: SingleChildScrollView(
            clipBehavior: Clip.hardEdge,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Hero(
                  tag: 'Zapato-1',
                  child: ShoeSizePreview(),
                ),
                ShoeDescription(
                    title: 'Nike Mercurial Vapor 15',
                    description:
                        "Expresa tu lado creativo con una variedad de colores vibrantes y llamativos diseñados para tu estilo distintivo y atrevido. Con detalles de diseño especiales, como opciones de color excéntricas, mensajes personalizados y un gráfico actualizado, tu creatividad dentro o fuera de la cancha no tiene límites."),
              ],
            ),
          )),
          AddCarShop(
            total: 180,
          )
        ],
      ),
    );
  }
}
