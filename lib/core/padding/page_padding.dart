import 'package:flutter/material.dart';

class PagePadding extends EdgeInsets {
  const PagePadding.horizontalSymmetricLow()
      : super.symmetric(horizontal: _paddingLow);
  const PagePadding.verticalSymmetricLow()
      : super.symmetric(vertical: _paddingLow);
  const PagePadding.generalLow()
      : super.only(right: _paddingLow, left: _paddingLow, top: _paddingLow);
  const PagePadding.allLow() : super.all(_paddingLow);
  const PagePadding.onlyLeftLow() : super.only(left: _paddingLow);
  const PagePadding.onlyBottomLow() : super.only(bottom: _paddingLow);
  const PagePadding.onlyTopLow() : super.only(top: _paddingLow);
  const PagePadding.onlyRightLow() : super.only(right: _paddingLow);
  const PagePadding.exceptBottomLow()
      : super.only(right: _paddingLow, left: _paddingLow, top: _paddingLow);
  static const double _paddingLow = 10;
}
