import 'package:flutter/material.dart';

import '../constants/text_style.dart';


class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final bool centered;

  AppText.extraBoldbig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign})
      : style = extraBoldbigStyle.copyWith(color: color), super(key: key);
  AppText.extraBoldbig2(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign})
      : style = extraBoldbigStyle2.copyWith(color: color), super(key: key);
  AppText.extraBoldmedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign})
      : style = extraBoldmediumStyle.copyWith(color: color), super(key: key);
  AppText.extraBoldsmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered=false,
      textAlign= TextAlign})
      : style = extraBoldsmallStyle.copyWith(color: color), super(key: key);
  AppText.boldbig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered=false,
      textAlign= TextAlign})
      : style = boldbigStyle.copyWith(color: color), super(key: key);
  AppText.boldmedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign=TextAlign})
      : style = boldmediumStyle.copyWith(color: color), super(key: key);
  AppText.boldsmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign= TextAlign})
      : style = boldsmallStyle.copyWith(color: color), super(key: key);
  AppText.regularBig(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign})
      : style = regularBigStyle.copyWith(color: color), super(key: key);
  AppText.regularMedium(this.text,
      {Key? key, color= Colors.black,
      this.multiText= false,
      this.centered= false,
      textAlign= TextAlign})
      : style = regularMediumStyle.copyWith(color: color), super(key: key);
  AppText.regularSmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign=TextAlign})
      : style = regularSmallStyle.copyWith(color: color), super(key: key);
  AppText.lightSmall(this.text,
      {Key? key, color= Colors.black,
      this.multiText=false,
      this.centered= false,
      textAlign=TextAlign})
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