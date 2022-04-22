import 'package:flutter/material.dart';

import '../../utils/text.dart';
import '../../widgets/activity_widget.dart';

class StoryBooks extends StatelessWidget {
  const StoryBooks({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 34, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppText.extraBoldbig2('Education')),
              const SizedBox(
                height: 30,
              ),
              AppText.extraBoldmedium('Story Books'),
              const SizedBox(
                height: 24,
              ),
             Expanded(child: ListView(children: const [
                ActivityWidget(
                title: 'Alice in wonder land',
                subtitle: 'Story Books',
                image: 'assets/books.png',
                isColored: false,
                // ctx: context,
                // page: const StoryBooks(),
              ),
              ActivityWidget(
                title: "Mary's Little Lamb",
                subtitle: 'Story Books',
                image: 'assets/books.png',
                isColored: false,
                
              ),
              ActivityWidget(
                title: 'Singing Birds',
                subtitle: 'Story Books',
                image: 'assets/books.png',
                isColored: false,
                
              ),
              ActivityWidget(
                title: 'Pinnochio',
                subtitle: 'Story Books',
                image: 'assets/books.png',
                isColored: false,
                
              ),
              ActivityWidget(
                title: 'Woman in a shoe',
                subtitle: 'Story Books',
                image: 'assets/books.png',
                isColored: false,
              ),
             ],))
            ],
          ),
        ),
      ),
    );
  }
}