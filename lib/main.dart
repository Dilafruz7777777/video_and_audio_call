import 'package:flutter/material.dart';
import 'package:video_and_audio_call/animation_page.dart';
import 'package:video_and_audio_call/homePage.dart';
import 'package:video_and_audio_call/twin_animation.dart';
import 'package:video_and_audio_call/twin_timer_animation.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
