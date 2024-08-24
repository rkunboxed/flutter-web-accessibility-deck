import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- The blank slide template renders a header and a footer.
- The remaining space is free for your imagination.
''';

class DebuggerSlide extends FlutterDeckSlideWidget {
  const DebuggerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/debugger',
            title: 'Semantics Debugger',
            speakerNotes: _speakerNotes,
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      rightBuilder: (context) {
        return Image.asset('assets/debugger.png');
      },
      leftBuilder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Semantics Debugger', style: FlutterDeckTheme.of(context).textTheme.header),
              const SizedBox(height: 60),
              FlutterDeckCodeHighlightTheme(
                data: FlutterDeckCodeHighlightTheme.of(context).copyWith(
                  textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge.copyWith(fontSize: 42, height: 1.4),
                ),
                child: const FlutterDeckCodeHighlight(
                  code: '''
  class MyApp extends StatelessWidget { 
      const MyApp({super.key});

      @override
      Widget build(BuildContext context) {  
          return const MaterialApp(
              showSemanticsDebugger: true,
          );
      }
  }
''',
                  language: 'dart',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
