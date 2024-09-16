import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class LighthouseResultsSlide extends FlutterDeckSlideWidget {
  const LighthouseResultsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/lighthouse-audit-report',
            title: 'Lighthouse Results',
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
              Image.asset(
                'assets/lighthouse_report.png',
                width: 1600,
              ),
            ],
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(
              Uri.https('github.com', '/flutter/flutter/issues/97305'),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/97305',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
