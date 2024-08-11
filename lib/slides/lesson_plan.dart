import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class TocSlide extends FlutterDeckSlideWidget {
  const TocSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/toc',
            steps: 3,
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'YOU WILL LEARN:',
              style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 600,
              child: FlutterDeckBulletList(
                useSteps: true,
                items: const [
                  'How accessibility for Flutter on the web is unique',
                  'Tools for debugging on the web',
                  'Specific challenges and solutions',
                ],
              ),
            ),
          ],
        ),
      ),
      //TODO add image
      rightBuilder: (context) => Center(
        child: Text(
          'ADD IMAGE',
          style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
