import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

/// Punto de entrada principal de la aplicación TriunfoBet Portfolio.
/// Diseñado con arquitectura minimalista y directa según el principio KISS.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TriunfobetPortfolioApp());
}

class TriunfobetPortfolioApp extends StatelessWidget {
  const TriunfobetPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TriunfoBet Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.getRoutes(),
    );
  }
}
