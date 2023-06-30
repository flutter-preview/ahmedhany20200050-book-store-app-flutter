import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Bookly',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 64,
            )),
        const SizedBox(
          height: 32,
        ),
        AnimatedTextKit(
          displayFullTextOnTap: true,
          repeatForever: true,
          animatedTexts: [
            WavyAnimatedText(
              'Loading...',
              textAlign: TextAlign.center,
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
          onTap: () {
            if (kDebugMode) {
              print("I am executing");
            }
          },
        ),
      ],
    );
  }
}
