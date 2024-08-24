import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class DropdownBugSlide extends FlutterDeckSlideWidget {
  const DropdownBugSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dropdown-bug',
            title: 'Dropdown Bug',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      rightBuilder: (context) {
        return Image.asset('assets/dropdown.png');
      },
      leftBuilder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DropdownMenu Bug', style: FlutterDeckTheme.of(context).textTheme.header),
              const SizedBox(height: 60),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  DropdownMenu(
    label: const Text('Select one'),
    dropdownMenuEntries: [...],
  );
''',
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
            launchUrl(Uri.dataFromString('https://github.com/flutter/flutter/issues/143848'));
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://github.com/flutter/flutter/issues/143848',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
