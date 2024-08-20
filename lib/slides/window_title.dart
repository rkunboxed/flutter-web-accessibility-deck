import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class WindowTitleSlide extends FlutterDeckSlideWidget {
  const WindowTitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/window-title',
            title: 'Window Title',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/window_title.png', height: 640),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  MaterialApp(
    title: 'browser window title',
    home: MyHomePage(),
  );
            
  Title(
    color: Colors.black,
    title: 'hello world',
    child: ...
  );
''',
                  language: 'dart',
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
