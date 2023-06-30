import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';

import '../../../../home/presentation/views/HomeView.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Get.to(()=>const HomeView(),transition: Transition.fade);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text('Bookly',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 64,
            )),
        SizedBox(
          height: 32,
        ),
        AnimatedText(),
      ],
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      displayFullTextOnTap: true,
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
    );
  }
}
