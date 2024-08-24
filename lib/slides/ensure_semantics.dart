import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class EnsureSemanticsSlide extends FlutterDeckSlideWidget {
  const EnsureSemanticsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ensure-semantics',
            title: 'Ensure Semantics',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: FlutterDeckCodeHighlightTheme(
            data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
              textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
            ),
            child: const FlutterDeckCodeHighlight(
              code: '''
  void main() {
      runApp(const MyApp());

      WidgetsFlutterBinding.ensureInitialized().ensureSemantics();  
  }
''',
              language: 'dart',
            ),
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(Uri.dataFromString('https://github.com/flutter/flutter/issues/115158'));
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/115158',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
