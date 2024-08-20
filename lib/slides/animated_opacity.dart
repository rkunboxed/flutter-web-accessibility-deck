import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class AnimatedOpacitySlide extends FlutterDeckSlideWidget {
  const AnimatedOpacitySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/animated-opacity',
            title: 'Animated Opacity',
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
  AnimatedOpacity(
    alwaysIncludeSemantics: true,
    opacity: _showGreeting ? 1 : 0,
    duration: const Duration(milliseconds: 500),
    child: const Text('Good Afternoon!'),
  );
''',
              language: 'dart',
            ),
          ),
        );
      },
    );
  }
}
