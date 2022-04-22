// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/views/main_cat_screen.dart';

import 'package:learn_to_grow/widgets/button2.dart';
import 'package:learn_to_grow/widgets/text_editing.dart';

import '../utils/text.dart';
import '../widgets/button.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();
   bool check = false;
    checked() {
      check = true;
      print('checked');
    }
@override
  void dispose(){
    _email.clear();
    _password.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   

    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, ),
          child: Column(
            children: [
              AppText.boldmedium(
                'Login',
              ),
              const SizedBox(
                height: 90,
              ),
            TextEditing(
                text: 'Enter your Email Address',
                type: TextInputType.emailAddress,
                text2: 'Email',
                controller: _email,
              ),
              const SizedBox(
                height: 44,
              ),
               TextEditing(
                text: 'Enter your Password',
                type: TextInputType.visiblePassword,
                text2: 'Password',
                password: true,
                controller: _password,
              ),
                Padding(
                padding: const EdgeInsets.only(left: 27, right: 27),
                child: Row(children: [
                  IconButton(
                    onPressed:(
                      (() => setState(() {
                        checked();
                      }))
             
                     ),
                    icon:check? const Icon(Icons.check_box_outlined):
                    const Icon(Icons.check_box_outline_blank)
                 
                        ),
                  
                  AppText.regularSmall('Remember me'),
                  const Spacer(),
                  AppText.regularSmall('Forgot password',color: Colors.blueAccent[400],)
                ]),
              ),

            
             // const Spacer(),
            const SizedBox(height: 251,) ,
              Button2(
                text: 'Login With',
                color: kWhiteColor,
                border: true,
              ),
              AppText.regularSmall('OR'),
              const SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () => AppRouter(ctx: context).nextPageOnly(page: const MainCategoryScreen()),
                child: Button(text: 'Login', color: kPrimaryColor))
            ],
          ),
        ),
      ),
    );
  }
}
