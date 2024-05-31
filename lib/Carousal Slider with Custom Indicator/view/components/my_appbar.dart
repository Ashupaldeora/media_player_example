import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 80,
      title: Text(
        "Carousal Slider",
        style: GoogleFonts.kanit(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600)),
      ),
      centerTitle: true,
      leading: Icon(
        Icons.search,
        color: Colors.white,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ],
    );
  }
}
