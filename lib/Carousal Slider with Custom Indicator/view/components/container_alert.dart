import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/gradient_model.dart';
import '../../models/image_quote_model.dart';
import '../../provider/carousel.dart';

class ContainerForAlert extends StatelessWidget {
  const ContainerForAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          imageQuoteData.length,
          (index) => AnimatedContainer(
            margin: EdgeInsets.all(4),
            duration: Duration(milliseconds: 250),
            height:
                Provider.of<CarouselProvider>(context).index == index ? 15 : 10,
            width:
                Provider.of<CarouselProvider>(context).index == index ? 15 : 10,
            decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
                color: Provider.of<CarouselProvider>(context).index == index
                    ? gradient[index].color
                    : Colors.white.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
