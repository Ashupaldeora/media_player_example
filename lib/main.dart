import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/provider/carousel.dart';
import 'package:media_player_example/parallax%20effect/parallax.dart';
import 'package:media_player_example/parallax%20effect/provider/parallax_provider.dart';
import 'package:provider/provider.dart';

import 'Carousal Slider with Custom Indicator/view/screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => CarouselProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => ParallaxProvider(),
    )
  ], child: MediaPlayerExampleApp()));
}

class MediaPlayerExampleApp extends StatelessWidget {
  const MediaPlayerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleSlider(),
    );
  }
}
