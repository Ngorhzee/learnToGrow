import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';

class MainCategory extends StatelessWidget {
  const MainCategory({Key? key, required this.image, required this.text, required this.icon})
      : super(key: key);
  final String image;
  final String text;
  final IconButton icon;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor.shade500,
      height: 262,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top:59),
        child: Column(
         
          children: [
          Image(image: AssetImage(image)),
          const Spacer(),
          Container(
              height: 56,
              width: double.infinity,
              color: purple,
              child: Padding(
                padding: const EdgeInsets.only(left: 144),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: AppText.extraBoldsmall(
                        text,
                        color: kWhiteColor,
                        centered: true,
                      ),
                    ),
                    const Spacer(),
                   icon
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
