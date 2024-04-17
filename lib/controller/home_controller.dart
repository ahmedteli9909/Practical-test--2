import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_task_2/model/color_model.dart';
import 'package:practical_task_2/model/color_palette_model.dart';

class HomeController extends GetxController {
  List<ColorPaletteModel> colorData = [
    ColorPaletteModel(title: 'Total Hardness (ppm)', colors: [
      ColorModel(color: const Color(0xff2d5b8e), value: 0),
      ColorModel(color: const Color(0xff596492), value: 110),
      ColorModel(color: const Color(0xff61588a), value: 250),
      ColorModel(color: const Color(0xff764b77), value: 500),
      ColorModel(color: const Color(0xff985182), value: 1000),
    ]),
    ColorPaletteModel(title: 'Total Chlorine (ppm)', colors: [
      ColorModel(color: const Color(0xfffff06c), value: 0),
      ColorModel(color: const Color(0xfff5f87f), value: 1),
      ColorModel(color: const Color(0xffdfeb6f), value: 3),
      ColorModel(color: const Color(0xffa6cb9e), value: 5),
      ColorModel(color: const Color(0xff86c09a), value: 10),
    ]),
    ColorPaletteModel(title: 'Free  Chlorine (ppm)', colors: [
      ColorModel(color: const Color(0xfffef09c), value: 0),
      ColorModel(color: const Color(0xffe6d9c9), value: 1),
      ColorModel(color: const Color(0xffb192b8), value: 3),
      ColorModel(color: const Color(0xff96679f), value: 5),
      ColorModel(color: const Color(0xff773e81), value: 10),
    ]),
    ColorPaletteModel(title: 'pH (ppm)', colors: [
      ColorModel(color: const Color(0xffde9149), value: 6.2),
      ColorModel(color: const Color(0xffec773e), value: 6.8),
      ColorModel(color: const Color(0xffd0552a), value: 7.2),
      ColorModel(color: const Color(0xffce524a), value: 7.8),
      ColorModel(color: const Color(0xffd63247), value: 8.4),
    ]
    ),
    ColorPaletteModel(title: 'Total Alkalinity (ppm)', colors: [
      ColorModel(color: const Color(0xffd29e4a), value: 0),
      ColorModel(color: const Color(0xff9f964f), value: 40),
      ColorModel(color: const Color(0xff68816f), value: 120),
      ColorModel(color: const Color(0xff367067), value: 180),
      ColorModel(color: const Color(0xff356a73), value: 240),
    ]),
    ColorPaletteModel(title: 'Cyanuric Acid (ppm)', colors: [
      ColorModel(color: const Color(0xffc58944), value: 0),
      ColorModel(color: const Color(0xffbf682e), value: 50),
      ColorModel(color: const Color(0xffaf454d), value: 100),
      ColorModel(color: const Color(0xff90275c), value: 150),
      ColorModel(color: const Color(0xff842e77), value: 300),
    ]),
  ];

  List<ColorModel?> selectedColors = List<ColorModel?>.filled(6, null,growable: false);


  void onSelectedColor(int index,ColorModel selectedColor){
   selectedColors[index] = selectedColor;
   update();
  }
}
