import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants/text_style.dart';


class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final bool centered;
  final double? fontSize;

  AppText.extraBoldbig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = extraBoldbigStyle.copyWith(color: color), super(key: key);
  AppText.extraBoldbig2(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = extraBoldbigStyle2.copyWith(color: color), super(key: key);
  AppText.extraBoldmedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = extraBoldmediumStyle.copyWith(color: color), super(key: key);
  AppText.extraBoldsmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered=false,
      textAlign= TextAlign, this.fontSize})
      : style = extraBoldsmallStyle.copyWith(color: color), super(key: key);
  AppText.boldbig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered=false,
      textAlign= TextAlign, this.fontSize})
      : style = boldbigStyle.copyWith(color: color), super(key: key);
  AppText.boldmedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign=TextAlign, this.fontSize})
      : style = boldmediumStyle.copyWith(color: color), super(key: key);
  AppText.boldsmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = boldsmallStyle.copyWith(color: color,fontSize: fontSize), super(key: key);
  AppText.regularBig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = regularBigStyle.copyWith(color: color), super(key: key);
  AppText.regularMedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign, this.fontSize})
      : style = regularMediumStyle.copyWith(color: color), super(key: key);
  AppText.regularSmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign=TextAlign, this.fontSize})
      : style = regularSmallStyle.copyWith(color: color), super(key: key);
  AppText.lightSmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign=TextAlign, this.fontSize})
      : style = lightSmallStyle.copyWith(color: color), super(key: key);

   @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText ? 9999999999 : 1,
      overflow: TextOverflow.ellipsis,
      textAlign: centered ? TextAlign.center : TextAlign.left,
      style: style,
    );
  }
}