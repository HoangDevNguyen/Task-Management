import 'package:flutter/material.dart';

//Design
const double dWidth = 450;
const double dHeight = 800;
const double dRatio = dHeight / dWidth;

double getWidth(BuildContext context, double size, double dWidth) {
  return size * MediaQuery.of(context).size.width / dWidth;
}

double getHeight(BuildContext context, double size, double dHeight) {
  return size * MediaQuery.of(context).size.height / dHeight;
}

double getRatio(BuildContext context, double size, double dHeight, double dRatio) {
  return size * MediaQuery.of(context).size.height / dHeight / dRatio;
}
getWi(BuildContext context){
  return MediaQuery.of(context).size.width;
}

getHe(BuildContext context){
  return MediaQuery.of(context).size.height;
}
//Color
const Color kYellowLight = Color(0xfffff7ce);
const Color kYellowDark = Color.fromARGB(255, 235, 182, 117);
const Color kYellow = Color.fromARGB(255, 247, 234, 206);

const Color kBlueLight = Color(0xffedf4fe);
const Color kBlueDark = Color.fromARGB(255, 178, 203, 253);
const Color kBlue = Color.fromARGB(255, 192, 206, 223);

const Color kRedLight = Color(0xfffcf0f0);
const Color kRedDark = Color(0xfff8bdc0);
const Color kRed = Color(0xfffbe4e6);

const Color kWhite = Colors.white;
Color kDark = Colors.grey.shade900;
Color kLightGrey = Colors.grey.shade200;

class ThemeColor{
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black;
  static const Color subText = Color(0xffc6c6c6);
}
