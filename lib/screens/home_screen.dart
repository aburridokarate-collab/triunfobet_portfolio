import 'package:flutter/material.dart';
import '../models/sport_category.dart';
import '../routes/app_routes.dart';
import '../themes/app_theme.dart';
import '../widgets/footer_widget.dart';
import '../widgets/sport_card.dart';

/// Pantalla principal del portafolio temático TriunfoBet.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _commentController = TextEditingController();
  final List<SportCategory> _sports = SportCategory.getSampleSports();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  void _submitComment() {
    final commentText = _commentController.text.trim();
    if (commentText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, escribe un comentario antes de enviar.'),
          backgroundColor: AppTheme.darkRed,
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    // Respuesta simple e inmediata (principio KISS)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          '¡Gracias por tus comentarios! Tu opinión nos ayuda a mejorar TriunfoBet.',
        ),
        backgroundColor: AppTheme.primaryRed,
        duration: Duration(seconds: 3),
      ),
    );
    _commentController.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'TRIUNFO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              'BET',
              style: TextStyle(
                color: AppTheme.primaryRed,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_pin, color: AppTheme.primaryRed),
            tooltip: 'Ver Desarrollador',
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.developer);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Banner con imagen local y respaldo errorBuilder
                  _buildBannerImage(),

                  const SizedBox(height: 24),

                  // 2. Sección "¿Quiénes somos?"
                  _buildAboutSection(),

                  const SizedBox(height: 24),

                  // 3. Sección "¿Qué ofrecemos?" (Fútbol, NBA, Béisbol/Tenis)
                  _buildOfferingSection(),

                  const SizedBox(height: 24),

                  // 4. Sección de comentarios
                  _buildCommentsSection(),
                ],
              ),
            ),

            // 5. Pie de página
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  /// Banner superior con imagen local y errorBuilder de respaldo
  Widget _buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        'assets/images/logo_triunfobet.png',
        height: 150,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          // Respaldo elegante si la imagen aún no existe o falla su carga
          return Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.cardDark,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppTheme.primaryRed.withValues(alpha: 0.5),
                width: 1.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.sports_score,
                  size: 46,
                  color: AppTheme.primaryRed,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'TRIUNFO',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textLight,
                      ),
                    ),
                    Text(
                      'BET',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryRed,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Portafolio de Apuestas Deportivas & Casino',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppTheme.textMuted,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Sección informativa "¿Quiénes somos?"
  Widget _buildAboutSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.info_outline, color: AppTheme.primaryRed, size: 22),
                SizedBox(width: 8),
                Text(
                  '¿Quiénes somos?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textLight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'En TriunfoBet somos apasionados por la emoción deportiva. Nuestra propuesta combina análisis estadístico riguroso, cuotas dinámicas y cobertura instantánea de las mejores ligas del mundo, brindando una experiencia de usuario clara, moderna y segura.',
              style: TextStyle(
                fontSize: 13.5,
                color: AppTheme.textMuted,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                _buildStatPill('Seguridad', Icons.security),
                const SizedBox(width: 8),
                _buildStatPill('Cuotas Top', Icons.flash_on),
                const SizedBox(width: 8),
                _buildStatPill('Soporte 24/7', Icons.headset_mic),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Pastilla de característica clave
  Widget _buildStatPill(String title, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.surfaceDark,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, size: 18, color: AppTheme.primaryRed),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: AppTheme.textLight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Sección con la oferta de deportes
  Widget _buildOfferingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(Icons.sports, color: AppTheme.primaryRed, size: 22),
            SizedBox(width: 8),
            Text(
              '¿Qué ofrecemos?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppTheme.textLight,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        const Text(
          'Explora las disciplinas deportivas destacadas disponibles en nuestra plataforma:',
          style: TextStyle(
            fontSize: 13,
            color: AppTheme.textMuted,
          ),
        ),
        const SizedBox(height: 14),

        // Lista de tarjetas de deportes
        ..._sports.map((sport) => SportCard(sport: sport)),
      ],
    );
  }

  /// Sección de comentarios y retroalimentación
  Widget _buildCommentsSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.chat_bubble_outline,
                    color: AppTheme.primaryRed, size: 20),
                SizedBox(width: 8),
                Text(
                  'Comentarios & Sugerencias',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.textLight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              '¿Tienes alguna sugerencia sobre nuestras cuotas o deportes? Déjanos tu opinión:',
              style: TextStyle(
                fontSize: 13,
                color: AppTheme.textMuted,
              ),
            ),
            const SizedBox(height: 14),
            TextField(
              controller: _commentController,
              maxLines: 3,
              style: const TextStyle(color: AppTheme.textLight, fontSize: 14),
              decoration: const InputDecoration(
                hintText: 'Escribe tu comentario o consulta aquí...',
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _submitComment,
                icon: const Icon(Icons.send, size: 18),
                label: const Text('Enviar Comentario'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
