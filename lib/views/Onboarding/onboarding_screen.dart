import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';
import 'package:learn_to_grow/views/Register/sign_up.dart';
import 'package:learn_to_grow/widgets/button.dart';
import '../Login/login.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
 

  @override
   
  Widget build(BuildContext context) {
  //   push(){
  //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const SignUpPage()));
  // }
  //   push2(){
  //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const LoginPage()));
  // }
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/onboarding.png'))
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 128, bottom: 96),
            child: Column(children: [
              AppText.boldmedium(
                'Sign up your kids ',
                color: Colors.white,
              ),
              AppText.boldmedium(
                'Now ',
                color: Colors.white,
              ),
              const SizedBox(height: 39,),
              const Center(
                // child: SvgPicture.asset('assets/Forward to the goal.svg',color: Colors.red,
                // ),
                child: Image(image: AssetImage('assets/Forward to the goal.png')),
              ),
              const Spacer(),
               InkWell(child: const Button(text: 'Sign Up', color: Color(0xffFFDD65),),
              onTap:(() => AppRouter(ctx: context).nextPage(page:const SignUpPage())),),
              const SizedBox(height: 39,),
              InkWell(
               child:  Button(text: 'Login', color: kWhiteColor,border: true,),
                onTap:(() => AppRouter(ctx: context).nextPage(page: const LoginPage())) ,
              )
    
    
            ]),
          ),
        ),
      ),
    );
  }
}
