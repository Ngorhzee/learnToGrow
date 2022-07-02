import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_to_grow/utils/text.dart';

import '../views/Onboarding/onboarding_screen.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
         //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText.boldbig(text,centered: true,),
            const SizedBox(
              height: 85,
            ),
            Center(child: Image.asset(image,height: 306,width: 306,)),
            // const SizedBox(
            //   height: 237,
            // ),
           
          ],
        ),
      ),
    );
  }
}
