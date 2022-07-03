import 'dart:convert';

import '../models/users.dart';
import 'package:http/http.dart'as http;

class Authenticaton{
  String baseUrl='https://kudel-exp-api.herokuapp.com/api/auth';
  
  Future<bool> signUp(String firstname,String lastname,String email,String phone, String password)async{
    try{
      print('trying');
      http.Response response=await http.post(Uri.parse('$baseUrl/users/?as=REGULAR'),body: {
        'first_name':firstname,
        'last_name':lastname,
        'email':email,
        'phone':phone,
        'password':password
      });
      var data=jsonDecode(response.body);
      //final User user=userModelFromJson(response.body);
      print(response.body);
      final result=(response.statusCode==201)?true:false;
      print(result);
      return result;
    }
    catch(e){
      print(e);
      return false;
    }
  }
  Future<EmailVerification>emailVerification(String email, String pin)async{
    try{
      http.Response response=await http.post(Uri.parse('$baseUrl/verify/email/'),body: {
        'email':email,
        'pin':pin,
      });
      var data=jsonDecode(response.body);
      final verify=verificationModelFromJson(response.body);
      return verify;

    }
    catch(e){
      print(e);
      rethrow;
    }
  }
  Future<bool>requestVerification({required  email,})async{
  
    try{
      //EmailVerification body=EmailVerification(email: email);
  Map<String,dynamic>body={
    'email':email
  };
      http.Response response=await http.post(Uri.parse('$baseUrl/send/verification/email/'),body: body
  );
      
      print(response.body);
      return true;
      
    }
    catch(e){
      print(e);
     return false;
    }
  }
  Future<bool>verifyotp(String email,String pin)async{
  
    try{
       // EmailVerification body=EmailVerification(email:email ,pin: pin);
    Map<String,dynamic>body={
      'email':email,
      'pin':pin
    };
    http.Response response=await http.post(Uri.parse('$baseUrl/verify/email/'),body: body);
    var data=json.decode(response.body)['verified'];
    print(data);
    return data;
    }
    catch(e){
      print(e);
      return false;
    }
  }
  Future<bool>login(String email,String password)async{
    try{
      Map<String,dynamic> body={
        'email':email,
        'password':password
      };
      http.Response response=await http.post(Uri.parse('$baseUrl/token/login/?asREGULAR'),body: body);
      print(response.body);
      final result=response.statusCode==200?true:false;
      print(response.statusCode);
      print(result);
      return result;
    }
    catch(e){
      print(e);
      return false;
    }
  }
  Future<bool>forgotPassword(String email)async{
    try{
      Map<String,dynamic> body={
        'email':email
      };
      http.Response response=await http.post(Uri.parse('$baseUrl/recover/password/trigger/'),body: body);
      print(response.body);
      return true;

    }
    catch(e){
      print(e);
      return false;
    }
  }
  Future<bool>resetPassword(String email,String pin,String password)async{
    try{
      Map<String,dynamic> body={
        'email':email,
        'pin':pin,
        'new_password':password
      };
      http.Response response=await http.post(Uri.parse('$baseUrl/recover/password/reset/'),body: body);
      var data=jsonDecode(response.body)['verified'];
      print(response.body);
      return data;

    }
    catch(e){
      print(e);
      return false;
    }
  }
}