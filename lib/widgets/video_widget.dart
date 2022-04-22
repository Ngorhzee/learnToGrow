import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25,right: 25,bottom:20),
      height: 96,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        //margin:const EdgeInsets.only(left: 25,right: 25,bottom:20),
        elevation: 3,
       // shadowColor: kBlackColor.withOpacity(0.25),
        child: Padding(
        padding: const EdgeInsets.only(right: 37,left: 12,top: 26,bottom: 11),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Video File.png'),
            const SizedBox(width: 21,),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  AppText.extraBoldsmall('Aladin'),
                  AppText.lightSmall('Video',color: const Color(0xff28155F),)
                ],
              ),
            ),
            const Spacer(),
            AppText.extraBoldsmall('3:00',color: const Color(0xffCDCBD1),)
          ],
        ),
      ),
      ),
    );
  }
}