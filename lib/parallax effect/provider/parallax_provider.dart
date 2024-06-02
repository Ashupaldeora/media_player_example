import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ParallaxProvider extends ChangeNotifier {
  late PageController _pageController;
  int selectedIndex = 0;
  int index = 0;
  bool isTextFinished = false;

  ParallaxProvider() {
    _pageController = PageController(viewportFraction: 2);
  }

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
