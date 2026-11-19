# TriunfoBet Portfolio 🏆⚽🏀⚾

Una aplicación móvil desarrollada en **Flutter** que funciona como portafolio temático de la plataforma de apuestas deportivas y casino **TriunfoBet**, enfocada en fútbol, NBA y béisbol/tenis. Diseñada bajo el principio **KISS (Keep It Simple, Stupid)** con un enfoque limpio, directo y de nivel universitario.

---

## 📌 Descripción del Proyecto

**TriunfoBet Portfolio** presenta una vitrina informativa e interactiva del ecosistema de apuestas de TriunfoBet. Su objetivo es brindar a los usuarios una experiencia visual moderna, fluida y deportiva que destaca:
- Quiénes somos y valores de la marca (seguridad, cuotas competitivas, soporte).
- Catálogo de deportes principales: **Fútbol**, **NBA (Baloncesto)** y **Béisbol & Tenis**, con ligas destacadas y cuotas.
- Sección de retroalimentación de usuarios con alertas inmediatas (`SnackBar`).
- Pie de página institucional con advertencias de juego responsable (+18) y reconocimiento académico.
- Vista dedicada al perfil del desarrollador accesible desde la barra superior.

---

## 🎨 Paleta de Colores & Diseño

El diseño implementa una estética de casa de apuestas deportivas de alta gama:
- **Fondo principal:** Negro puro y gris carbón (`#121212`, `#1E1E1E`, `#262626`).
- **Color de acento:** Rojo intenso deportivo (`#E50914`, `#B71C1C`).
- **Acentos de estado:** Verde neón (`#00E676`) para indicar eventos en vivo.
- **Tipografía:** Familia **Montserrat** a través de `google_fonts`, otorgando un estilo atlético, geométrico y altamente legible.

---

## 📁 Estructura del Proyecto

El código fuente sigue rigurosamente las convenciones de Dart (`lower_snake_case` para archivos y carpetas, `UpperCamelCase` para clases y widgets, y `lowerCamelCase` para miembros y variables):

```text
triunfobet_portfolio/
├── assets/
│   └── images/
│       └── logo_triunfobet.png       # Logo principal de TriunfoBet
├── lib/
│   ├── main.dart                     # Punto de entrada minimalista (tema + rutas)
│   ├── themes/
│   │   └── app_theme.dart            # ThemeData global, paleta rojo/negro y GoogleFonts
│   ├── routes/
│   │   └── app_routes.dart           # Definición centralizada de rutas nombradas ('/' y '/developer')
│   ├── models/
│   │   └── sport_category.dart       # Modelo de datos de disciplinas deportivas y datos de ejemplo
│   ├── widgets/
│   │   ├── sport_card.dart           # Tarjeta modular reutilizable para cada deporte
│   │   └── footer_widget.dart        # Pie de página corporativo, aviso +18 y disclaimer UNIMAR
│   └── screens/
│       ├── home_screen.dart          # Pantalla principal con banner, ¿Quiénes somos?, ofertas y comentarios
│       └── developer_screen.dart     # Pantalla de perfil y firma académica del autor
├── test/
│   └── widget_test.dart              # Pruebas de humo de widgets
├── pubspec.yaml                      # Dependencias (google_fonts) y configuración de assets
└── README.md                         # Documentación general del proyecto
```

---

## 🛠️ Tecnologías y Dependencias

- **Flutter SDK:** ^3.13.7 (compatible con Flutter 3.47+)
- **Dart SDK:** Null-safety activado
- **google_fonts (^6.3.3):** Integración tipográfica directa en `ThemeData` sin necesidad de empaquetar binarios de fuentes estáticas manualmente.
- **Manejo de Assets:** Carpeta `assets/images/` declarada en `pubspec.yaml`, con implementación de `errorBuilder` en `Image.asset` para garantizar que la interfaz se muestre de forma atractiva aún si el archivo de imagen no estuviese disponible.

---

## 👨‍💻 Autor & Contexto Académico

- **Estudiante:** Andrés Amaiz
- **Carrera:** Ingeniería de Sistemas
- **Institución:** Universidad de Margarita (UNIMAR)
- **Cátedra:** Programación III
- **Correo Institucional:** andres.amaiz@unimar.edu.ve

---

## 🚀 Instrucciones de Instalación y Ejecución

1. **Clonar o ubicarse en el directorio del proyecto:**
   ```bash
   cd triunfobet_portfolio
   ```

2. **Obtener las dependencias:**
   ```bash
   flutter pub get
   ```

3. **Verificar el análisis de código (sin advertencias ni errores):**
   ```bash
   flutter analyze
   ```

4. **Ejecutar las pruebas unitarias/widgets:**
   ```bash
   flutter test
   ```

5. **Lanzar la aplicación:**
   ```bash
   flutter run
   ```
   *(Puede ejecutarse en emulador Android, simulador iOS, Chrome o escritorio Windows/macOS/Linux).*
