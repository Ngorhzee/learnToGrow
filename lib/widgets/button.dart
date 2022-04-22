import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_to_grow/utils/text.dart';

import '../utils/color.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.color,this.border=false,})
      : super(key: key);
  final String text;
  final Color color;
  
  final bool border;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 25,right: 25),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border:border?Border.all(color: kBlackColor,style:BorderStyle.solid):const Border()
        //border: const Border()
      ),
      child:Center(child: AppText.regularMedium(text)),
       

        
    );
  }
}
