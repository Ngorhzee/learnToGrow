// ignore_for_file: unnecessary_string_escapes, avoid_print

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_to_grow/models/users.dart';
import 'package:learn_to_grow/navigation/app_router.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/views/Login/login.dart';
import 'package:learn_to_grow/views/email_verification.dart';

import 'package:learn_to_grow/widgets/button2.dart';
import 'package:learn_to_grow/widgets/loader.dart';
import 'package:learn_to_grow/widgets/text_editing.dart';

import '../../services/services.dart';
import '../../utils/text.dart';
import '../../widgets/button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
   TextEditingController phone = TextEditingController();
   TextEditingController lastname = TextEditingController();
   TextEditingController firstname = TextEditingController();
    bool result=false;
  bool isLoading=false;
  bool resend=false;
  Authenticaton authenticaton = Authenticaton();
class _SignUpPageState extends State<SignUpPage> {
   
  final formKey = GlobalKey<FormState>();
  String _firstname = '';
  String _lastname = '';
  String _password = '';
  String _phoneNo = '';
  String _email = '';
 
  verify()async{
    isLoading=true;
    setState(() {
      
    });
    print('checking');
    result=await authenticaton.requestVerification(email: _email);
    print(email.text);
    //print(_email);
    isLoading=false;
    setState(() {
      
    });
    print('verified');
  }
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children:[ Scaffold(
          backgroundColor: kSecondaryColor,
          body: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: Column(
              children: [
                AppText.boldmedium(
                  'Sign up',
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  key: formKey,
                  child: Expanded(
                    child: ListView(
                      children: [
                        TextEditing(
                          onchange: (value) {
                            setState(() {
                              _firstname = value!;
                            });
                            
                          },
                           text: 'firstame',
                          type: TextInputType.name,
                          text2: 'firstame',
                          controller: firstname,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Name';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextEditing(
                          onchange: (value) {
                            setState(() {
                              _lastname = value!;
                            });
                            
                          },
                          text: 'lastName',
                          type: TextInputType.text,
                          text2: 'lastName',
                          controller: lastname,
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'Cannot Be blank';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextEditing(
                          onchange: (value) {
                            setState(() {
                              _phoneNo = value!;
                            });
                            
                          },
                          text: 'Enter your Mobile No.',
                          type: TextInputType.phone,
                          text2: 'Mobile No.',
                          controller: phone,
                         validate: (value) {
                            if (value!.length > 11 || value.length < 11) {
                              return 'Phone Number Not Valid';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextEditing(
                          onchange: (value) {
                            setState(() {
                            _email = value!;
                             // _email.text=email;
                            });
                          
                          },
                          text: 'Enter your Email Address',
                          type: TextInputType.emailAddress,
                          text2: 'Email',
                          controller: email,
                          validate: (value) {
                            const pattern=r'(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            final regExp = RegExp(pattern);
                            if (value!.isEmpty) {
                              return 'Enter Your Email Address';
                            } else if (!regExp.hasMatch(value)) {
                              return 'Enter a Valid Email Address';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextEditing(
                          onchange: (value){
                            setState(() {
                              _password=value!;
                              
                            });
                            
                          },
                          text: 'Enter your Password',
                          type: TextInputType.visiblePassword,
                          text2: 'Password',
                          password: true,
                          controller: password,
                          validate: (value){
                            if(value!.length<8){
                              return ' Enter Atlest 8 characters';
                            }
                            else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 90,
                        ),
                        GestureDetector(
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
                        GestureDetector(
                            onTap: () async {
                             final isValid = formKey.currentState!.validate();
                              print('pressed');
                              FocusScope.of(context).unfocus();
                              if (isValid) {
                                //print(isValid);
                                formKey.currentState!.save();
                                 User users = User(
                                  email: _email,
                                  password: _password,
                                  firstname: _firstname,
                                  lastname: _lastname,
                                  phone: _phoneNo
                                  );
                               await verify();
                                  if(result==true){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) =>
                                      Emailverification(user: users)),
                                ),
                              );
                                  }
                                  else{
                                    const snackBar= SnackBar(content: Text('Something went wrong try again'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              //       Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: ((context) =>
                              //         Emailverification(user: users)),
                              //   ),
                              // );
                                  
                              
                              }}
                             
                            },
                            child: Button(text: 'Sign Up', color: kPrimaryColor))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Loader(isLoading: isLoading)
     ] ),
    );
  }
}
