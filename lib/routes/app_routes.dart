import 'package:flutter/material.dart';
import '../screens/developer_screen.dart';
import '../screens/home_screen.dart';

/// Definición y gestión centralizada de las rutas de navegación de la app.
class AppRoutes {
  static const String home = '/';
  static const String developer = '/developer';

  /// Mapeo de rutas nombradas a sus respectivos constructores de widgets
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      developer: (context) => const DeveloperScreen(),
    };
  }
}
