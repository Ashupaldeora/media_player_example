import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/scheduler.dart';
import 'package:path/path.dart' as path;
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/models/image_quote_model.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/provider/carousel.dart';
import 'package:media_player_example/parallax%20effect/component/parallax_effect.dart';
import 'package:media_player_example/parallax%20effect/provider/parallax_provider.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({
    super.key,
    required this.videoPath,
    required this.isSelected,
  });
  final String videoPath;
  final bool isSelected;

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;

  GlobalKey _videoKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  void didUpdateWidget(VideoCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.videoPath != oldWidget.videoPath) {
      _controller.dispose();
      _initializeVideoPlayer();
    } else if (widget.isSelected && !_controller.value.isPlaying) {
      _controller.play();
    } else if (!widget.isSelected && _controller.value.isPlaying) {
      _controller.pause();
    }
  }

  void _initializeVideoPlayer() {
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
        }
        if (widget.isSelected) {
          _controller.play();
        }
      });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 5)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Flow(
                delegate: ParallaxFlowDelegate(
                  scrollable: Scrollable.of(context),
                  listItemContext: context,
                  backgroundImageKey: _videoKey,
                ),
                children: [
                  AspectRatio(
                    aspectRatio: 7 / 7.5,
                    // _controller.value.aspectRatio,

                    child: VideoPlayer(
                      _controller,
                      key: _videoKey,
                    ),
                  ),
                ]),
            Provider.of<ParallaxProvider>(context, listen: true).index ==
                    Provider.of<ParallaxProvider>(context, listen: true)
                        .selectedIndex
                ? Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      height: 270,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                videoQuoteData[
                                        Provider.of<CarouselProvider>(context)
                                            .index]
                                    .quote,
                                textStyle: GoogleFonts.kanit(
                                    textStyle: TextStyle(
                                        shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(2.0, 2.0),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600)),
                                speed: Duration(milliseconds: 80),
                              ),
                            ],
                            onFinished: () => Provider.of<ParallaxProvider>(
                                    context,
                                    listen: false)
                                .updateFinishedText(true),
                            isRepeatingAnimation: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Provider.of<ParallaxProvider>(
                            context,
                          ).isTextFinished
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          videoQuoteData[
                                                  Provider.of<CarouselProvider>(
                                                          context)
                                                      .index]
                                              .character,
                                          textStyle: GoogleFonts.kanit(
                                              shadows: <Shadow>[
                                                Shadow(
                                                  offset: Offset(2.0, 2.0),
                                                  blurRadius: 3.0,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                ),
                                              ],
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600)),
                                          speed: Duration(milliseconds: 50),
                                        ),
                                      ],
                                      isRepeatingAnimation: false,
                                    ),
                                  ],
                                )
                              : Container()
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
