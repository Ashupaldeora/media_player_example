import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/models/gradient_model.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/models/image_quote_model.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/provider/carousel.dart';
import 'package:provider/provider.dart';

import 'components/carousel_slider.dart';
import 'components/container_alert.dart';
import 'components/my_appbar.dart';

class CarousalSlider extends StatelessWidget {
  const CarousalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: gradient[Provider.of<CarouselProvider>(context).index]
                .gradient),
        child: Column(
          children: [
            MyAppBar(),
            SizedBox(
              height: 50,
            ),
            CarousalSliderWhole(),
            SizedBox(
              height: 30,
            ),
            ContainerForAlert()
          ],
        ),
      ),
    );
  }
}
