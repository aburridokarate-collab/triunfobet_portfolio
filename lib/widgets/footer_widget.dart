import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

/// Pie de página con información corporativa, aviso de juego responsable
/// y mención del contexto académico (UNIMAR).
class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF0F0F0F),
        border: Border(
          top: BorderSide(color: Color(0xFF262626), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo textual estilizado
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'TRIUNFO',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: AppTheme.textLight,
                ),
              ),
              Text(
                'BET',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: AppTheme.primaryRed,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Tu plataforma deportiva de confianza • Fútbol, Baloncesto y más',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: AppTheme.textMuted,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(color: Color(0xFF2A2A2A)),
          const SizedBox(height: 12),

          // Aviso de juego responsable
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppTheme.primaryRed,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  '+18',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Juega con moderación. El juego compulsivo es perjudicial para la salud.',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppTheme.textMuted,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Aviso académico (KISS y contexto universitario)
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF333333)),
            ),
            child: const Text(
              'Aviso Académico: Este proyecto fue desarrollado con fines educativos para la cátedra Programación III en la Universidad de Margarita (UNIMAR).',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: Color(0xFFCCCCCC),
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 14),

          // Firma de derechos
          const Text(
            '© 2026 TriunfoBet Portfolio • Andrés Amaiz',
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF707070),
            ),
          ),
        ],
      ),
    );
  }
}
