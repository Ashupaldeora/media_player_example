import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/image_quote_model.dart';
import '../../provider/carousel.dart';

class CarousalSliderWhole extends StatelessWidget {
  const CarousalSliderWhole({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: imageQuoteData.length,
        itemBuilder: (context, index, realIndex) => Container(
              width: 500,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        spreadRadius: 2)
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(imageQuoteData[index].image),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        imageQuoteData[index].quote,

                        // overflow: TextOverflow.visible,
                        style: GoogleFonts.kanit(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            imageQuoteData[index].character,
                            style: GoogleFonts.kanit(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
        options: CarouselOptions(
            onPageChanged: (index, reason) =>
                Provider.of<CarouselProvider>(context, listen: false)
                    .updateImageIndex(index),
            height: 550,
            viewportFraction: 0.75,
            animateToClosest: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: true));
  }
}
