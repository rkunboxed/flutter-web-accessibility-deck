import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class AriaSlide extends FlutterDeckSlideWidget {
  const AriaSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/aria',
            title: 'ARIA',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
            child: ListView(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Accessible Rich Internet Application (ARIA)',
                            style: FlutterDeckTheme.of(context).textTheme.title,
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Set of roles and attributes that make websites more accessible',
                            style: FlutterDeckTheme.of(context).textTheme.subtitle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 100),
                    Column(
                      children: [
                        Container(
                          color: Colors.black,
                          padding: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'ARIA Roles',
                                    style: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 40),
                                  ),
                                  Text(
                                    '• button \n'
                                    '• checkbox \n'
                                    '• dialog \n'
                                    '• figure \n'
                                    '• form \n'
                                    '• img \n'
                                    '• input',
                                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium.copyWith(fontSize: 32),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 100),
                              Column(
                                children: [
                                  Text(
                                    'ARIA Attributes',
                                    style: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 40),
                                  ),
                                  Text(
                                    '• aria-checked \n'
                                    '• aria-disabled \n'
                                    '• aria-hidden \n'
                                    '• aria-label \n'
                                    '• aria-readonly \n'
                                    '• aria-required \n'
                                    '• aria-selected',
                                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium.copyWith(fontSize: 32),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
                        FlutterDeckCodeHighlightTheme(
                          data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                            textStyle:
                                FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 36, height: 1.4),
                          ),
                          child: const FlutterDeckCodeHighlight(
                            code: '''
  <div id="contact-info" 
    role="form" aria-label="Contact information">
          <!-- form content -->
  </div>  ''',
                            language: 'dart',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
      footerBuilder: (context) {
        return InkWell(
          onTap: () {
            launchUrl(Uri.dataFromString('https://developer.mozilla.org/en-US/docs/Web/Accessibility'));
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'https://developer.mozilla.org/en-US/docs/Web/Accessibility',
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
