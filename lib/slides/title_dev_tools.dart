import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class TitleDevToolsSlide extends FlutterDeckSlideWidget {
  const TitleDevToolsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dev-tools',
            title: 'Dev Tools',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
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
                'assets/tools.png',
                height: 300,
              ),
              const SizedBox(height: 25),
              Text('Developer Tools', style: FlutterDeckTheme.of(context).textTheme.display),
            ],
          ),
        );
      },
      // imageBuilder: (context) {
      //   return Image.asset('assets/dev_tools_before.png', width: 1200);
      // },
    );
  }
}
