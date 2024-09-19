import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Welcome to flutter_deck example! 🚀
- Use slide deck controls to navigate.
''';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/intro',
            title: 'Welcome',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Row(
            children: [
              Image.asset(
                'assets/alice_rabbit_hole.jpg',
                width: 800,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Accessibility and the Web',
                      style: FlutterDeckTheme.of(context).textTheme.header.copyWith(fontSize: 72),
                    ),
                    Text(
                      'Lessons Learned from Adding Accessibility \nto a Flutter Web App',
                      style: FlutterDeckTheme.of(context).textTheme.subtitle.copyWith(height: 1.2),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      children: [
                        Image.asset('assets/flutter_logo.png', height: 140),
                        const SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rona Kilmer',
                              style: FlutterDeckTheme.of(context).textTheme.header.copyWith(fontSize: 36),
                            ),
                            Text(
                              'Senior Flutter Developer at Ardley',
                              style: FlutterDeckTheme.of(context).textTheme.header.copyWith(fontSize: 28),
                            ),
                            Text(
                              'Twitter/X: @rkunboxed',
                              style: FlutterDeckTheme.of(context).textTheme.header.copyWith(fontSize: 28),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
