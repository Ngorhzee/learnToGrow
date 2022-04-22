import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({ Key? key, this.image, this.text, this.ctx, this.page }) : super(key: key);
  final String? image;
  final String? text;
  final BuildContext? ctx;
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(() {
        AppRouter(ctx: ctx).nextPage(page: page);
      }),
      child: Container(
        height: 230,
        width: 158,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image!,height: 95, width: 108,),
              const SizedBox(height: 13,),
              AppText.extraBoldsmall(text!),
            ],
          ),
        ),
      ),
    );
  }
}