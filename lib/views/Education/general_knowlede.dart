import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';


import '../../utils/text.dart';
import '../../widgets/activity_widget.dart';

class GeneralKnowledge extends StatelessWidget {
  const GeneralKnowledge({Key? key}) : super(key: key);

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
              AppText.extraBoldmedium('General Knowledge'),
              const SizedBox(
                height: 24,
              ),
             Expanded(child: ListView(children: const [
                ActivityWidget(
                title: 'English',
                subtitle: 'General Knowledge',
                image: 'assets/books.png',
                isColored: false,
                // ctx: context,
                // page: const StoryBooks(),
              ),
              SizedBox(height: 43,),
              ActivityWidget(
                title: 'Mathematics',
                subtitle: 'General Knowledge',
                image: 'assets/books.png',
                isColored: false,
                
              ),
              SizedBox(height: 43,),
              ActivityWidget(
                title: 'Other Languages pro',
                subtitle: 'General Knowledge',
                image: 'assets/books.png',
                isColored: true,
                
              ),
              SizedBox(height: 43,),
              ActivityWidget(
                title: 'History',
                subtitle: 'General Knowledge',
                image: 'assets/books.png',
                isColored: false,
                
              ),
              SizedBox(height: 43,),
              ActivityWidget(
                title: 'Vocational',
                subtitle: 'General Knowledge',
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
