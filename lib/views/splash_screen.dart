import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/views/screen.dart';


import 'package:learn_to_grow/utils/text.dart';

class SplashScreen extends StatefulWidget {
 

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState(){
   super.initState();
   navigate();
 }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (() =>  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const Test(),
                    ),
                  )),
      child: Scaffold(
        backgroundColor:const Color(0xffFFDD65),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Column(
                children:  [
                  const Spacer(),
                  Center(child: AppText.extraBoldbig('Learn To Grow'))
                ],
              ),
            ),
             Positioned(
              bottom:0 ,
              right: 185,
              child:Image.asset('assets/Group(1).png')
            )
          ],
        ),
      ),
    );
  }
  void navigate(){
    Future.delayed(const Duration(seconds: 3),(){
      AppRouter(ctx: context ).nextPageOnly(page:const Test());
    });
  }
}