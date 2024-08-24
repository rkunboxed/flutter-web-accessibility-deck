import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class SemanticsAnnounceSlide extends FlutterDeckSlideWidget {
  const SemanticsAnnounceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/semantics-announce',
            title: 'Announcements',
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
              Text('Programmatically Alert User', style: FlutterDeckTheme.of(context).textTheme.header),
              const SizedBox(height: 60),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  import 'package:flutter/semantics.dart';

  SemanticsService.announce('Good Afternoon!', TextDirection.ltr);  ''',
                  language: 'dart',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
