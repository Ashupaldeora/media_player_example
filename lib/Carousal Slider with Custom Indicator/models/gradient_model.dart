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
          Color(0xff853824),
          Color(0xff0B0507),
          Color(0xff6D3224),
        ]),
    color: Color(0xff0B0507),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff2E0600),
          Color(0xff71241A),
          Color(0xff000000),
        ]),
    color: Color(0xffbe1a05),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff984439),
          Color(0xffC79688),
          Color(0xff2A070B),
        ]),
    color: Color(0xffC79688),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xffDACFD5),
          Color(0xff4B5E7C),
          Color(0xff142131),
        ]),
    color: Color(0xffDACFD5),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff262324),
          Color(0xff19405F),
          Color(0xffF5ECDB),
        ]),
    color: Color(0xff262324),
  ),
  GradientModel(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff997074),
          Color(0xff201A1A),
          Color(0xff540403),
        ]),
    color: Color(0xff997074),
  ),
];
