import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_accessibility_challenges/slides/accessibility_tree.dart';
import 'package:flutter_web_accessibility_challenges/slides/animated_opacity.dart';
import 'package:flutter_web_accessibility_challenges/slides/aria.dart';
import 'package:flutter_web_accessibility_challenges/slides/chrome_dev_tools.dart';
import 'package:flutter_web_accessibility_challenges/slides/chrome_dev_tools_after.dart';
import 'package:flutter_web_accessibility_challenges/slides/debugger.dart';
import 'package:flutter_web_accessibility_challenges/slides/dialog_bug.dart';
import 'package:flutter_web_accessibility_challenges/slides/dropdown_bug.dart';
import 'package:flutter_web_accessibility_challenges/slides/ensure_semantics.dart';
import 'package:flutter_web_accessibility_challenges/slides/focus_equality.dart';
import 'package:flutter_web_accessibility_challenges/slides/lessons_learned.dart';
import 'package:flutter_web_accessibility_challenges/slides/lighthouse.dart';
import 'package:flutter_web_accessibility_challenges/slides/lighthouse_results.dart';
import 'package:flutter_web_accessibility_challenges/slides/media_query.dart';
import 'package:flutter_web_accessibility_challenges/slides/semantics_announce.dart';
import 'package:flutter_web_accessibility_challenges/slides/textfield_bug.dart';
import 'package:flutter_web_accessibility_challenges/slides/thank_you.dart';
import 'package:flutter_web_accessibility_challenges/slides/title.dart';
import 'package:flutter_web_accessibility_challenges/slides/lesson_plan.dart';
import 'package:flutter_web_accessibility_challenges/slides/title_challenges.dart';
import 'package:flutter_web_accessibility_challenges/slides/title_dev_tools.dart';
import 'package:flutter_web_accessibility_challenges/slides/title_tips.dart';
import 'package:flutter_web_accessibility_challenges/slides/tweedledeedum.dart';
import 'package:flutter_web_accessibility_challenges/slides/where_to_start.dart';
import 'package:flutter_web_accessibility_challenges/slides/window_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessibility for Flutter Web Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      slides: const [
        TitleSlide(),
        TocSlide(),
        WhereToStartSlide(),
        TitleDevToolsSlide(),
        LighthouseSlide(),
        LighthouseResultsSlide(),
        DebuggerSlide(),
        ChromeDevToolsSlide(),
        ChromeDevToolsAfterSlide(),
        EnsureSemanticsSlide(),
        AccessibilityTreeSlide(),
        AriaSlide(),
        TitleQuickTipsSlide(),
        MediaQuerySlide(),
        WindowTitleSlide(),
        AnimatedOpacitySlide(),
        SemanticsAnnounceSlide(),
        TitleChallengesSlide(),
        DialogBugSlide(),
        DropdownBugSlide(),
        FocusEqualitySlide(),
        TextFieldBugSlide(),
        LessonsLearnedSlide(),
        TweedledeedumSlide(),
        ThankYouSlide()
      ],
      configuration: FlutterDeckConfiguration(
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
        footer: const FlutterDeckFooterConfiguration(
          showFooter: false,
        ),
        header: const FlutterDeckHeaderConfiguration(
          showHeader: false,
        ),
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.cyan,
          strokeWidth: 8.0,
        ),
        progressIndicator: const FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
          backgroundColor: Colors.black,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      lightTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFB5FFFC),
          ),
          useMaterial3: true,
        ),
      ),
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF16222A),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
      ),
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Rona Kilmer',
        description: 'Senior Flutter Developer at Ardley',
        socialHandle: 'Twitter/X: @rkunboxed',
        imagePath: 'assets/flutter_logo.png',
      ),
    );
  }
}
