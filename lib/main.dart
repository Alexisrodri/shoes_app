import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoe_model.dart';
import 'package:shoes_app/src/pages/pages.dart';
import 'package:shoes_app/src/theme/app_theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ShoeModel(),
      child: DevicePreview(
        backgroundColor: Colors.amber,
        tools: const [
          DeviceSection(
            orientation: false,
          ),
          SystemSection(
            locale: false,
          ),
          // AccessibilitySection(),
          SettingsSection()
        ],
        enabled: true,
        builder: (context) => const MainApp(),
      )));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = MediaQuery.of(context).platformBrightness;
    return MaterialApp(
      title: 'ShoesApp',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const ShoePage(),
      theme: AppTheme().getTheme(theme),
    );
  }
}
