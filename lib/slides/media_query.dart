import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class MediaQuerySlide extends FlutterDeckSlideWidget {
  const MediaQuerySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/media-query',
            title: 'What about MediaQuery?',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forget about accessibleNavigation from MediaQuery',
                  style: FlutterDeckTheme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 40),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  MediaQuery.of(context).accessibleNavigation ''',
                  language: 'dart',
                ),
              ),
              const SizedBox(height: 60),
              Text(
                'Because of this',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 40),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  WidgetsFlutterBinding.ensureInitialized().ensureSemantics();  ''',
                  language: 'dart',
                ),
              ),
            ],
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(
              Uri.https('github.com', '/flutter/flutter/issues/67571'),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/67571',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
