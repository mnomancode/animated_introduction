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
final List<SingleIntroScreen> pages = [
  const SingleIntroScreen(
    title: 'Welcome to the Event Management App !',
    description: 'You plans your Events, We\'ll do the rest and will be the best! Guaranteed!  ',
    imageAsset: 'assets/onboard_three.png',
    imageHeightMultiple: 0.42,
    svgImageAsset: 'assets/splash bg 1.svg',
  ),
  const SingleIntroScreen(
    title: 'Book tickets to cricket matches and events',
    description: 'Tickets to the latest movies, crickets matches, concerts, comedy shows, plus lots more !',
    imageAsset: 'assets/onboard_two.png',
    svgImageAsset: 'assets/splash bg 2.svg',
  ),
  const SingleIntroScreen(
    title: 'Grabs all events now only in your hands',
    description: 'All events are now in your hands, just a click away ! ',
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
      gradient: LinearGradient(
        colors: [
          const Color.fromARGB(255, 198, 222, 241),
          // Colors.red,
          Colors.grey.shade300,
        ],
        stops: const [0.0, 0.5],
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
      ),
      onDone: () {
        /// TODO: Go to desire page like login or home
        log('Done button pressed');
      },
    );
  }
}
