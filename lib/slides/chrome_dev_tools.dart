import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class ChromeDevToolsSlide extends FlutterDeckSlideWidget {
  const ChromeDevToolsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/chrome-dev-tools',
            title: 'Chrome DevTools',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) {
        return Image.asset('assets/dev_tools_before.png', width: 1600);
      },
    );
  }
}
