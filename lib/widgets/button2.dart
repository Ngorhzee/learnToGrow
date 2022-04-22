import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';

class Button2 extends StatelessWidget {
  const Button2({Key? key, required this.text, required this.color,this.border=false,})
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
        border:border?  Border.all(color: kBlackColor,style:BorderStyle.solid,):const Border()
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 120,right: 17),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          AppText.regularMedium(text),
          const Spacer(),
          Image.asset('assets/Google (1).png',height: 40,width: 40,)
         //SvgPicture.asset('assets/Google.svg',height: 52,width: 52,fit: BoxFit.contain,)

        ]),
      ),
    );
  }
}
