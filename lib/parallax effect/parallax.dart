import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/models/gradient_model.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/models/image_quote_model.dart';
import 'package:media_player_example/Carousal%20Slider%20with%20Custom%20Indicator/provider/carousel.dart';
import 'package:media_player_example/parallax%20effect/component/video_card.dart';
import 'package:media_player_example/parallax%20effect/provider/parallax_provider.dart';
import 'package:provider/provider.dart';

class ExampleSlider extends StatelessWidget {
  ExampleSlider({
    super.key,
  });

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
            AppBar(
              toolbarHeight: 80,
              backgroundColor: Colors.transparent,
              title: Text(
                "Parallax Effect",
                style: GoogleFonts.kanit(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
              ),
              centerTitle: true,
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 590,
              child: CarouselSlider.builder(
                  itemCount: videoQuoteData.length,
                  itemBuilder: (context, index, realIndex) {
                    Provider.of<ParallaxProvider>(context, listen: false)
                        .updateIndex(index);
                    return VideoCard(
                      videoPath: videoQuoteData[index].image,
                      isSelected: Provider.of<ParallaxProvider>(context)
                              .selectedIndex ==
                          index,
                    );
                  },
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        Provider.of<ParallaxProvider>(context, listen: false)
                            .updateFinishedText(false);
                        Provider.of<CarouselProvider>(context, listen: false)
                            .updateImageIndex(index);
                        Provider.of<ParallaxProvider>(context, listen: false)
                            .updateSelectedIndex(index);
                      },
                      height: 550,
                      viewportFraction: 0.7,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      animateToClosest: true,
                      scrollPhysics: BouncingScrollPhysics(),
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true)),
            ),
          ],
        ),
      ),
    );
  }
}
