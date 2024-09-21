import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class WhereToStartSlide extends FlutterDeckSlideWidget {
  const WhereToStartSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/where-to-start',
            title: 'Where to Start',
            steps: 6,
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: Color(0xff101417),
        ),
      ),
      leftBuilder: (context) => Padding(
        padding: const EdgeInsets.only(top: 35, right: 35, left: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WHERE DO I START?',
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
            const SizedBox(height: 50),
            Text(
              'Ensure your app:',
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 600,
              child: FlutterDeckBulletList(
                useSteps: true,
                items: const [
                  'Handles text scaling',
                  'Has tappable target sizes',
                  'Uses sufficient color contrast ratios',
                  'Does not use color alone to convey meaning',
                  'Works with keyboard',
                  'Works with screen reader',
                ],
              ),
            ),
          ],
        ),
      ),
      rightBuilder: (context) => Align(
        alignment: Alignment.topRight,
        child: Image.asset('assets/alice_door.jpg'),
      ),
    );
  }
}
