import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle Txt26() {
  return TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    wordSpacing: 2.0,
    color: Colors.white
  );
}

TextStyle TxtCust({FontWeight ftWeight = FontWeight.normal , double ftwordSpacing = 0, Color ftColor = Colors.black})
{
  return TextStyle(
  fontWeight: ftWeight,
  wordSpacing: ftwordSpacing,
  color: ftColor
  );
}


