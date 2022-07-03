// import 'package:flutter/material.dart';
// import 'package:learn_to_grow/views/Register/sign_up.dart';

// import '../constants/text_style.dart';
// import '../navigation/app_router.dart';
// import '../utils/color.dart';
// import '../utils/text.dart';
// class ForgotPassword extends StatefulWidget {
//   const ForgotPassword({ Key? key }) : super(key: key);

//   @override
//   State<ForgotPassword> createState() => _ForgotPasswordState();
// }
// TextEditingController _email=TextEditingController();
// class _ForgotPasswordState extends State<ForgotPassword> {
//   String email='';
// veriy()async{
//   isLoading=true;
//   setState(() {
    
//   });
//   result=await authenticaton.
// }
//   @override
//   Widget build(BuildContext context) {
//      return Stack(
//       children:[ Scaffold(
//         backgroundColor: kSecondaryColor,
//         body: SafeArea(
//             child: Padding(
//           padding: const EdgeInsets.only(left: 25, right: 25),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               const SizedBox(
//                   height: 200,
//                   width: 200,
//                   child: Image(
//                     image: AssetImage(
//                       'assets/primary-password.png',
//                     ),
//                     fit: BoxFit.cover,
//                   )),
//               AppText.boldbig('Forgot Password'),
//               AppText.lightSmall(
//                 'Enter Your Email  address',
//                 multiText: true,
//               ),
//               const SizedBox(
//                 height: 35,
//               ),
//               Card(
//                 margin: const EdgeInsets.all(15),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 color: Colors.white,
//                 elevation: 5,
//                 child: Container(
//                   height: 250,
//                   width: double.infinity,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         AppText.regularMedium('Email'),
//                         Form(
//                           key: formKey,
//                           autovalidateMode: AutovalidateMode.onUserInteraction,
//                           child: TextFormField(
//                             onChanged: ((value) => setState(() {
//                               email=value;
//                             })),
//                             controller: _email,
//                             validator: ((value) {
//                               if (value!.isEmpty) {
//                                 return 'Cannot be Blank';
//                               } else {
//                                 return null;
//                               }
//                             }),
//                             decoration: const InputDecoration(
//                               hintText: 'email',
//                               contentPadding: EdgeInsets.symmetric(
//                                   vertical: 5, horizontal: 10),
//                               //focusedBorder: OutlineInputBorder(),
//                             ),
//                           ),
//                         ),
//                         // const SizedBox(height: 15,),
//                         const Spacer(),
//                         Row(
//                           children: [
//                             // Text(
//                             //   'Verify Code',
//                             //   style: extraBoldmediumStyle.copyWith(fontSize: 22),
//                             // ),
//                             const Spacer(),
//                             GestureDetector(
//                               onTap: () async {
//                                 final isValid=formKey.currentState!.validate();
//                                 if(isValid){
//                                   formKey.currentState!.save();
//                                   await verify();
//                                    if (result==true) {
//                                     print('result');
//                                   //   setState(() {
                                      
//                                   //   });
//                                   // await authentication.signUp(
//                                   //     widget.user.firstname!,
//                                   //     widget.user.lastname!,
//                                   //     widget.user.email,
//                                   //     widget.user.phone!,
//                                   //     widget.user.password);
//                                   //     setState(() {
                                        
//                                   //     });
//                                  AppRouter(ctx: context).nextPageOnly(page: const PasswordRetrieve());
//                                 }
//                                 else{
//                                   const snackBar= SnackBar(content: Text(' wrong otp try again'));
//                                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                                 //      await authentication.signUp(
//                                 //       widget.user.firstname!,
//                                 //       widget.user.lastname,
//                                 //       widget.user.email,
//                                 //       widget.user.mobileNo,
//                                 //       widget.user.password);
//                                 //  AppRouter(ctx: context).nextPageOnly(page: const LoginPage());
//                                 }
//                                 }
                               
//                               },
//                               child: Container(
//                                 height: 50,
//                                 width: 70,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: kPrimaryColor),
//                                 child: const Center(
//                                     child: Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.white,
//                                 )),
//                               ),
//                             )
//                           ],
//                         ),
    
//                         GestureDetector(
//                           onTap: ()async {
//                             await reSend();
//                             if(resend){
//                               final snackBar=SnackBar(content: Text('resent'));
//                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                             }
//                             else{
//                                final snackBar=SnackBar(content: Text('failed Try again'));
//                               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                             }
//                           },
//                             child: AppText.regularMedium(
//                           'Resend Code?',
//                           color: Colors.blue,
//                           fontSize: 16,
//                         )),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )),
//       ),
//       Loader(isLoading: isLoading)
//    ] );
  
//   }
// }