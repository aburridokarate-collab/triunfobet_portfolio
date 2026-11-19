import 'package:flutter_test/flutter_test.dart';
import 'package:triunfobet_portfolio/main.dart';

void main() {
  testWidgets('TriunfoBet Portfolio smoke test', (WidgetTester tester) async {
    // Renderizamos la aplicación
    await tester.pumpWidget(const TriunfobetPortfolioApp());

    // Verificamos que se renderice el título de la marca
    expect(find.text('TRIUNFO'), findsWidgets);
    expect(find.text('BET'), findsWidgets);

    // Verificamos la presencia de las secciones clave
    expect(find.text('¿Quiénes somos?'), findsOneWidget);
    expect(find.text('¿Qué ofrecemos?'), findsOneWidget);
  });
}
