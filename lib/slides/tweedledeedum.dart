import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:google_fonts/google_fonts.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class TweedledeedumSlide extends FlutterDeckSlideWidget {
  const TweedledeedumSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/tweedledeedum',
            title: 'Tweedledeedum',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'If it looks accessible, it might be. \nAnd if it might be, it probably is. ',
                        style: GoogleFonts.kalam(textStyle: FlutterDeckTheme.of(context).textTheme.header),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Unless it isn’t...',
                        style: GoogleFonts.kalam(textStyle: FlutterDeckTheme.of(context).textTheme.header),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 60),
                Image.asset('assets/alice_tweedledeedum.jpg', height: 640),
              ],
            ),
          ),
        );
      },
    );
  }
}
