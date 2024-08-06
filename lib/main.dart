import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_deck_web_client/flutter_deck_web_client.dart';
import 'package:flutter_web_accessibility_challenges/slides/title_slide.dart';
import 'package:flutter_web_accessibility_challenges/slides/lesson_plan_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      client: FlutterDeckWebClient(),
      // You could use the default configuration or create your own.
      configuration: FlutterDeckConfiguration(
        // Define a global background for the light and dark themes separately.
        background: const FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFDEE9), Color(0xFFB5FFFC)],
            ),
          ),
          dark: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF16222A), Color(0xFF3A6073)],
            ),
          ),
        ),
        // Set defaults for the footer.
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        // Set defaults for the header.
        header: const FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        // Override the default marker configuration.
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.cyan,
          strokeWidth: 8.0,
        ),
        // Show progress indicator with specifc gradient and background color.
        progressIndicator: const FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
          backgroundColor: Colors.black,
        ),
        // Use a custom slide size.
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
        // Use a custom transition between slides.
        transition: const FlutterDeckTransition.fade(),
      ),
      // You can also define your own light...
      lightTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFB5FFFC),
          ),
          useMaterial3: true,
        ),
      ),
      // ...and dark themes.
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF16222A),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
      ),
      // Presentation is build automatically from the list of slides.
      slides: const [
        TitleSlide(),
        TocSlide(),
        // LayoutStructureSlide(),
        // BlankSlide(),
        // SplitSlide(),
        // ImageSlide(),
        // BigFactSlide(),
        // QuoteSlide(),
        // FooterSlide(),
        // HiddenSlide(),
        // DrawerSlide(),
        // MarkerSlide(),
        // ThemingSlide(),
        // BackgroundSlide(),
        // LocalizationSlide(),
        // TransitionsSlide(),
        // StepsSlide(),
        // CodeHighlightSlide(),
        // EndSlide(),
      ],
      // Do not forget to introduce yourself!
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Rona Kilmer',
        description: 'Senior Flutter Developer at Ardley',
        socialHandle: 'Twitter/X: @rkunboxed',
        imagePath: 'assets/flutter_logo.png',
      ),
      locale: const Locale('en'),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
