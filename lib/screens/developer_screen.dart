import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Pantalla que presenta la firma académica del desarrollador.
class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Desarrollador'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppTheme.primaryRed),
          tooltip: 'Regresar',
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // Tarjeta principal de identidad
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 28.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    // Avatar con borde rojo
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppTheme.primaryRed,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 46,
                        backgroundColor: AppTheme.surfaceDark,
                        child: Icon(
                          Icons.person,
                          size: 52,
                          color: AppTheme.primaryRed,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Nombre y Carrera
                    const Text(
                      'Andrés Amaiz',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textLight,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Estudiante de Ingeniería de Sistemas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.5,
                        color: AppTheme.primaryRed,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Universidad de Margarita (UNIMAR)',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppTheme.textMuted,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Badge de Asignatura
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.surfaceDark,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFF404040)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.school,
                            size: 16,
                            color: AppTheme.primaryRed,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Cátedra: Programación III',
                            style: TextStyle(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.textLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Información académica y de contacto
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Información de Contacto & Proyecto',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textLight,
                      ),
                    ),
                    const SizedBox(height: 14),
                    _buildInfoRow(
                      icon: Icons.badge_outlined,
                      label: 'Rol',
                      value: 'Desarrollador Móvil / Frontend',
                    ),
                    const Divider(color: Color(0xFF2E2E2E), height: 20),
                    _buildInfoRow(
                      icon: Icons.code,
                      label: 'Stack Tecnológico',
                      value: 'Flutter, Dart, Google Fonts',
                    ),
                    const Divider(color: Color(0xFF2E2E2E), height: 20),
                    _buildInfoRow(
                      icon: Icons.email_outlined,
                      label: 'Correo Institucional',
                      value: 'andres.amaiz@unimar.edu.ve',
                    ),
                    const Divider(color: Color(0xFF2E2E2E), height: 20),
                    _buildInfoRow(
                      icon: Icons.architecture,
                      label: 'Filosofía de Diseño',
                      value: 'KISS (Keep It Simple, Stupid)',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Botón para regresar
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Regresar a la Pantalla Principal'),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  /// Fila de información con icono, título y valor
  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppTheme.primaryRed, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppTheme.textMuted,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.textLight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
