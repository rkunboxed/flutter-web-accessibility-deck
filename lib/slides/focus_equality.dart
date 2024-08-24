import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class FocusEqualitySlide extends FlutterDeckSlideWidget {
  const FocusEqualitySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/focus-equality',
            title: 'Focus Equality',
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
              Text('Accessibility Focus != Keyboard Focus', style: FlutterDeckTheme.of(context).textTheme.header),
              const SizedBox(height: 40),
              Image.asset(
                'assets/focus_inequality.png',
                width: 1600,
              ),
            ],
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(Uri.dataFromString('https://github.com/flutter/flutter/issues/83809'));
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/83809',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
