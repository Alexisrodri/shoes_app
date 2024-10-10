import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {
  String _assetImage = 'assets/imgs/mercurial-vapor/green.png';
  // assets\imgs\air-max\negro.png
  double _talla = 9.0;

  String get assetImage => _assetImage;

  set assetImage(String valor) {
    _assetImage = valor;
    notifyListeners();
  }

  double get talla => _talla;
  set talla(double valor) {
    _talla = valor;
    notifyListeners();
  }
}
