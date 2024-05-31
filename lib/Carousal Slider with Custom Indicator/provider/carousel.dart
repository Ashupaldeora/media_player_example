import 'package:flutter/cupertino.dart';

class CarouselProvider extends ChangeNotifier {
  int index = 0;

  void updateImageIndex(int index) {
    this.index = index;
    notifyListeners();
  }
}
