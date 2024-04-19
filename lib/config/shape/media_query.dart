import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double getWidth(double number) {
  return ScreenUtil().screenWidth * number;
}

double getHeight(double number) {
  return ScreenUtil().screenHeight * number;
}

double getScreenWidth() {
  return ScreenUtil().screenWidth;
}

double getScreenHeight(BuildContext context) {
  return ScreenUtil().screenHeight;
}
