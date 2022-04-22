import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/widgets/page_view_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/text.dart';
import 'onboarding_screen.dart';

class Test extends StatefulWidget {

  const Test({ Key? key }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Expanded(child:  PageView(
            controller: controller,
        children: const [
          PageViewWidget(text: 'Engage Your Kids Today', image: 'assets/Children play ball.png'),
          PageViewWidget(text: 'With Educational Resources', image: 'assets/Online biology lesson.png'),
          PageViewWidget(text: "Groom your child's Future", image: 'assets/Follow the leader.png')
        ],
    ),),
   
    buildIndicator(),
     const SizedBox(height: 57,),
    buildSkip()
        ]),
      ),
    );
  }

Widget buildIndicator() {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(activeDotColor: kPrimaryColor,dotColor:const Color(0xffD0D0D0)),
    );
  }
  Widget buildSkip(){
    return  GestureDetector(
              onTap:((() => AppRouter(ctx: context).nextPage(page: const OnboardingScreen()))),
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText.regularBig('Skip'),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            );
  }
}