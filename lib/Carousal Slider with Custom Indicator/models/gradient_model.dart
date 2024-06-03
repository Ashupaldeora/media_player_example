import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GradientModel {
  final Gradient gradient;
  final Color color;
  GradientModel({required this.gradient, required this.color});
}

List<GradientModel> gradient = [
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff5CA3E4),
          Color(0xff94DFFA),
          Color(0xff24315C),
        ]),
    color: Color(0xff0B0507),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff11010B),
          Color(0xffE01641),
          Color(0xffF72241),
        ]),
    color: Color(0xffbe1a05),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff396F81),
          Color(0xffE9E5CA),
          Color(0xff1B6694),
        ]),
    color: Color(0xffC79688),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff6C110F),
          Color(0xffEF7C5D),
          Color(0xff1C0A0B),
        ]),
    color: Color(0xffDACFD5),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffC6DDFA),
          Color(0xffD8C0BD),
          Color(0xff06112C),
        ]),
    color: Color(0xff262324),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffF0A66C),
          Color(0xffC96003),
          Color(0xff4C2B0A),
        ]),
    color: Color(0xff997074),
  ),
];
