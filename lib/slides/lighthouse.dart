import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class LighthouseSlide extends FlutterDeckSlideWidget {
  const LighthouseSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/lighthouse-audit',
            title: 'Lighthouse Audit',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      headerBuilder: (context) {
        return Text('Lighthouse Audit');
      },
      imageBuilder: (context) {
        return Image.asset('assets/lighthouse_audit.png', width: 1600);
      },
    );
  }
}
