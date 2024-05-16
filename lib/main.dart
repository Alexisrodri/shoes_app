import 'package:flutter/material.dart';
import 'package:shoes_app/src/pages/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home: ShoePage()
    );
  }
}
