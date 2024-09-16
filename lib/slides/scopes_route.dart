import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class ScopesRouteSlide extends FlutterDeckSlideWidget {
  const ScopesRouteSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/scopes-route',
            title: 'scopesRoute',
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
  Semantics(
      scopesRoute: true,
      explicitChildNodes: true, 
      child: ...,
  );
''',
              language: 'dart',
            ),
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(
              Uri.https('github.com', '/flutter/flutter/issues/53702'),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/53702',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
