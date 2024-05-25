import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get height => size.height;
  double get width => size.width;
  double get aspectRatio => size.aspectRatio;
  EdgeInsets get padding => MediaQuery.paddingOf(this);
  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);
  TextScaler get textScaleFactor => MediaQuery.textScalerOf(this);
}
