import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_flora/theme/app_assets.dart';

class BackgroundVector {
  static final List<Widget> combination1 = [
    Positioned(
      right: 0,
      bottom: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector5),
    ),
    Positioned(
      left: 67,
      bottom: 136,
      child: SvgPicture.asset(AppAssets.backgroundVector16B),
    ),
    Positioned(
      left: 0,
      top: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector16R),
    ),
    Positioned(
      left: 130,
      bottom: 210,
      child: SvgPicture.asset(AppAssets.backgroundVector17),
    )
  ];

  static final List<Widget> combination2 = [
    Positioned(
      left: 0,
      top: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector10),
    ),
    Positioned(
      top: 12,
      left: 24,
      child: SvgPicture.asset(AppAssets.backgroundVector11),
    ),
    Positioned(
      top: 28,
      right: 75,
      child: SvgPicture.asset(AppAssets.backgroundVector14B),
    ),
    Positioned(
      top: 63,
      right: 70,
      child: SvgPicture.asset(AppAssets.backgroundVector15),
    ),
    Positioned(
      right: 0,
      bottom: 290,
      child: SvgPicture.asset(AppAssets.backgroundVector14R),
    ),
    Positioned(
      left: 28,
      bottom: 72,
      child: SvgPicture.asset(AppAssets.backgroundVector9),
    ),
    Positioned(
      right: 0,
      bottom: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector6),
    )
  ];

  static final List<Widget> combination3 = [
    Positioned(
      left: 0,
      top: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector16R),
    ),
    Positioned(
      bottom: 0,
      right: 0,
      child: SvgPicture.asset(AppAssets.backgroundVector6),
    ),
    Positioned(
      left: 67,
      bottom: 136,
      child: SvgPicture.asset(AppAssets.backgroundVector16B),
    ),
    Positioned(
      left: 141,
      bottom: 208,
      child: SvgPicture.asset(AppAssets.backgroundVector17),
    ),
    Positioned(
      top: 28,
      right: 75,
      child: SvgPicture.asset(AppAssets.backgroundVector14B),
    ),
    Positioned(
      top: 63,
      right: 70,
      child: SvgPicture.asset(AppAssets.backgroundVector15),
    ),
  ];
}
