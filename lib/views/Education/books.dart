import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/views/Education/story_books.dart';
import 'package:learn_to_grow/widgets/activity_widget.dart';

import '../../utils/text.dart';
import 'general_knowlede.dart';

class Books extends StatelessWidget {
  const Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 34, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppText.extraBoldbig2('Education')),
              const SizedBox(
                height: 30,
              ),
              AppText.extraBoldmedium('Books'),
              const SizedBox(
                height: 24,
              ),
              ActivityWidget(
                title: 'Story Books',
                subtitle: 'Education',
                image: 'assets/Occupied Bed.png',
                ctx: context,
                page: const StoryBooks(),
                isColored: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ActivityWidget(
                title: 'General Knowledge',
                subtitle: 'Education',
                image: 'assets/books.png',
                ctx: context,
                page: const GeneralKnowledge(),
                isColored: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
