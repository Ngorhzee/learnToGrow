import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';
import 'package:learn_to_grow/widgets/main_category.dart';

import '../navigation/app_router.dart';
import 'Education/education.dart';
import 'Leisure/leisure.dart';



class MainCategoryScreen extends StatelessWidget {
  const MainCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 29, right: 29, top: 34),
          child: Column(
            children: [
              Center(
                child: AppText.extraBoldmedium('Select Category'),
              ),
              const SizedBox(height: 70,),
              Expanded(
                  child: ListView(
                children: [
                  MainCategory(
                    image: 'assets/Student Male.png',
                    text: 'Education',
                    icon: IconButton(
                      onPressed: (() => AppRouter(
                            ctx: context,
                          ).nextPage(page: const Education())),
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ),
                 const SizedBox(
                    height: 77,
                  ),
                  MainCategory(
                      image: 'assets/game.png',
                      text: 'Leisure',
                      icon: IconButton(
                        onPressed: (() => AppRouter(
                              ctx: context,
                            ).nextPage(page: const Leisure())),
                        icon: const Icon(Icons.arrow_forward),
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
