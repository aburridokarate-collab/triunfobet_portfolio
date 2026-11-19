import 'package:flutter/material.dart';

/// Modelo de datos que representa una categoría deportiva en TriunfoBet.
class SportCategory {
  final String title;
  final String description;
  final IconData icon;
  final List<String> popularLeagues;
  final String statusBadge;

  const SportCategory({
    required this.title,
    required this.description,
    required this.icon,
    required this.popularLeagues,
    required this.statusBadge,
  });

  /// Lista de deportes principales ofrecidos por la plataforma
  static List<SportCategory> getSampleSports() {
    return const [
      SportCategory(
        title: 'Fútbol',
        description:
            'Cuotas en vivo y previas para los torneos más competitivos del mundo.',
        icon: Icons.sports_soccer,
        popularLeagues: [
          'Champions League',
          'LaLiga',
          'Premier League',
          'Copa Libertadores'
        ],
        statusBadge: '18 Partidos en Vivo',
      ),
      SportCategory(
        title: 'NBA (Baloncesto)',
        description:
            'Toda la emoción del mejor básquetbol mundial punto a punto con hándicaps dinámicos.',
        icon: Icons.sports_basketball,
        popularLeagues: ['Temporada Regular', 'Playoffs', 'Euroliga', 'WNBA'],
        statusBadge: '6 Juegos Disponibles',
      ),
      SportCategory(
        title: 'Béisbol & Tenis',
        description:
            'Acción de las Grandes Ligas (MLB) y los circuitos ATP / WTA con apuestas por set y entrada.',
        icon: Icons.sports_baseball,
        popularLeagues: ['MLB', 'LVBP', 'Roland Garros', 'Wimbledon'],
        statusBadge: '12 Eventos Activos',
      ),
    ];
  }
}
