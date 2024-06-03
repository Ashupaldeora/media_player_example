import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:video_player/video_player.dart';

class ParallaxProvider extends ChangeNotifier {

  int selectedIndex = 0;
  int index = 0;
  bool isTextFinished = false;



  void updateIndex(int index) {
    this.index = index;
    notifyListeners();
  }

  void updateFinishedText(bool value) {
    isTextFinished = value;

    notifyListeners();
  }

  void updateSelectedIndex(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
