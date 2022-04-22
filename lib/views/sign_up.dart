import 'package:flutter/material.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/views/login.dart';

import 'package:learn_to_grow/widgets/button2.dart';
import 'package:learn_to_grow/widgets/text_editing.dart';

import '../utils/text.dart';
import '../widgets/button.dart';

class SignUpPage extends StatefulWidget {
   
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
   final TextEditingController _email=TextEditingController();
   final TextEditingController _password=TextEditingController();
   final TextEditingController _phone=TextEditingController();
   final TextEditingController _userName=TextEditingController();
   final TextEditingController _name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 128, bottom: 10),
          child: Column(
            children: [
              AppText.boldmedium(
                'Sign up',
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(child: ListView(
                children: [
                    TextEditing(
                text: 'Name',
                type: TextInputType.name,
                text2: 'Name',
                controller: _name,
              ),
              const SizedBox(
                height: 20,
              ),
                    TextEditing(
                text: 'UserName',
                type: TextInputType.text,
                text2: 'UserName',
                controller: _userName,
              ),
              const SizedBox(
                height: 20,
              ),
                    TextEditing(
                text: 'Enter your Mobile No.',
                type: TextInputType.phone,
                text2: 'Mobile No.',
                controller: _phone,
              ),
              const SizedBox(
                height: 20,
              ),
                    TextEditing(
                text: 'Enter your Email Address',
                type: TextInputType.emailAddress,
                text2: 'Email',
                controller: _email,
              ),
              const SizedBox(
                height: 20,
              ),
               TextEditing(
                text: 'Enter your Password',
                type: TextInputType.visiblePassword,
                text2: 'Password',
                password: true,
                controller: _password,
              ),
              const SizedBox(height: 90,),
              GestureDetector(
                onTap: () => AppRouter(ctx: context).nextPageOnly(page: LoginPage()),
                child: Button2(
                  text: 'Sign Up With',
                  color: kWhiteColor,
                  border: true,
                ),
              ),
              Center(child: AppText.regularSmall('OR')),
              const SizedBox(
                height: 4,
              ),
              Button(text: 'Sign Up', color: kPrimaryColor)
                ],
              ),),
             
            ],
          ),
        ),
      ),
    );
  }
}
