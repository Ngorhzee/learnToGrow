import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';

import '../utils/color.dart';
import '../utils/text.dart';
class ActivityWidget extends StatelessWidget {
  const ActivityWidget({ Key? key, required this.title, required this.subtitle, required this.image,  this.ctx,  this.page ,required this.isColored}) : super(key: key);
  final String title;
  final String subtitle;
  final String image;
  final BuildContext? ctx;
  final Widget? page;
  final bool isColored;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(() => AppRouter(ctx: ctx! ).nextPage(page: page!)) ,
      child: Container(
        //margin: const EdgeInsets.only(left: 25,right: 25,bottom:20),
        height: 96,
        width: double.infinity,
        decoration: BoxDecoration(
          color:isColored?purple:kWhiteColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //margin:const EdgeInsets.only(left: 25,right: 25,bottom:20),
          elevation: 3,
          color: isColored?purple:kWhiteColor,
         // shadowColor: kBlackColor.withOpacity(0.25),
          child: Padding(
          padding: const EdgeInsets.only(right: 37,left: 12,top: 26,bottom: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              const SizedBox(width: 8,),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.extraBoldsmall(title,color: isColored?kWhiteColor:kBlackColor,),
                    AppText.lightSmall(subtitle,color:isColored?kWhiteColor: dimblue,)
                  ],
                ),
              ),
              
            ],
          ),
        ),
        ),
      ),
    );
  }
}