import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class TitleQuickTipsSlide extends FlutterDeckSlideWidget {
  const TitleQuickTipsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quick-tips',
            title: 'Quick Tips',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
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
              Image.asset(
                'assets/tips.png',
                height: 300,
              ),
              const SizedBox(height: 25),
              Text('Quick Tips', style: FlutterDeckTheme.of(context).textTheme.display),
            ],
          ),
        );
      },
    );
  }
}
