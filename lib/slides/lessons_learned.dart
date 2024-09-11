import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class LessonsLearnedSlide extends FlutterDeckSlideWidget {
  const LessonsLearnedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/lessons-learned',
            title: 'Lessons Learned',
            steps: 4,
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      theme: FlutterDeckTheme.of(context).copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          rightBackgroundColor: Colors.black,
        ),
      ),
      leftBuilder: (context) => Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LESSONS LEARNED',
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 600,
              child: FlutterDeckBulletList(
                useSteps: true,
                items: const [
                  'Consider accessibility as you build',
                  // Much easier to consider semantics as you go rather than retrofit
                  'Test widgets with ensureSemantics before committing',
                  //check any premade widgets with ensureSemantics turned on before committing to using them
                  'Test on touch devices and keyboard/mouse setups w/and w/out screen reader',
                  //be sure to check on phones/touch devices as well as desktop w/and without screen reader
                  'Flutter GitHub issues > StackOverflow',
                  //if you run into a problem check flutter issues in GitHub check CLOSED issues as well
                ],
              ),
            ),
          ],
        ),
      ),
      rightBuilder: (context) => Align(
        alignment: Alignment.topRight,
        child: Image.asset('assets/alice_caterpillar.jpg'),
      ),
    );
  }
}
