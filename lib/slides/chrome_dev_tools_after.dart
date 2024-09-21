import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class ChromeDevToolsAfterSlide extends FlutterDeckSlideWidget {
  const ChromeDevToolsAfterSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/chrome-dev-tools-after',
            title: 'Chrome DevTools with Accessibility',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Screen readers must opt-in',
                style: FlutterDeckTheme.of(context).textTheme.subtitle,
              ),
              const SizedBox(height: 20),
              Image.asset('assets/dev_tools_after.png', width: 1450),
            ],
          ),
        );
      },
    );
  }
}
