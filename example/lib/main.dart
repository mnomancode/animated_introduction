import 'dart:developer';

import 'package:animated_introduction/animated_introduction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Introduction Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExamplePage(),
    );
  }
}

/// List of pages to be shown in the introduction
///
const List<SingleIntroScreen> pages = [
  SingleIntroScreen(
    title: 'Recommendations You Can Rely On',
    description: 'Get trusted advice from the people who know you best. Your family, friends, and inner circle.',
    imageAsset: 'assets/onboard_three.png',
    imageHeightMultiple: 0.42,
    svgImageAsset: 'assets/splash bg 1.svg',
  ),
  SingleIntroScreen(
    title: 'Create Circles That Reflect Your Life',
    description:
        'Easily group your contacts into Family, Friends, and Custom Circles to keep recommendations relevant and personal.',
    imageAsset: 'assets/onboard_two.png',
    svgImageAsset: 'assets/splash bg 2.svg',
  ),
  SingleIntroScreen(
    title: 'AI-Powered, But Circle-First',
    description: 'Use smart search and suggestions powered by your trusted circles, never strangers.',
    centerBallRadius: 0,
    sideDotsBgColor: Colors.white,
    imageAsset: 'assets/onboard_one.png',
    svgImageAsset: 'assets/splash bg 3.svg',
  ),
];

/// Example page
class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedIntroduction(
      footerBgColor: Colors.white,
      textColor: Colors.black,
      footerRadius: 50,
      topHeightForFooter: MediaQuery.sizeOf(context).height * .67,
      slides: pages,
      indicatorType: IndicatorType.circle,
      activeDotColor: Colors.blue,
      inactiveDotColor: Colors.grey,
      gradient: RadialGradient(
        colors: [
          const Color(0xFF2B7FFF),
          Colors.grey.shade300,
        ],
        stops: const [0.0, 0.9],
        center: Alignment.bottomCenter,
        radius: 1.3,
        focal: Alignment.bottomLeft,
      ),
      onDone: () {
        /// TODO: Go to desire page like login or home
        log('Done button pressed');
      },
    );
  }
}
