import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
            title: 'Thank You',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Demo App Repo',
                    style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  Image.asset('assets/bitly_demo_qr.jpeg', width: 340),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.https('bit.ly', '/3zdRCI1'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'https://bit.ly/3zdRCI1',
                        style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 140),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Image.asset('assets/headshot.png', width: 420),
                  const SizedBox(height: 30),
                  Text('@rkunboxed', style: FlutterDeckTheme.of(context).textTheme.title),
                  const SizedBox(height: 60),
                  Text(
                    'Slides built with FlutterDeck',
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Alice in Wonderland images generated with ChatGPT',
                    style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(width: 140),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Slide Deck Repo',
                    style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  Image.asset('assets/bitly_deck_qr.jpeg', width: 340),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.https('bit.ly', '/47wGhzi'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'https://bit.ly/47wGhzi',
                        style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
