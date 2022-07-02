// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

User userModelFromJson(String str)=>User.fromJson(json.decode(str));
String userModelToJson(User data)=>json.encode(data.toJson());
EmailVerification verificationModelFromJson(String str)=>EmailVerification.fromJson(json.decode(str));
String verificationModelToJson(EmailVerification data)=>json.encode(data.toJson());
class User{
  String? firstname;
  String ?lastname;
  String? phone;
  String email;
  String password;
  User({ this.firstname, this.lastname, this.phone,required this.email,required this.password});

  factory User.fromJson(Map<String,dynamic>json){
    return User(
      firstname: json['firstname'],
      lastname: json['lastname'],
      phone: json['phone'],
      email: json['email'],
      password: json['password']
    );
  }
  Map<String,dynamic> toJson()=>{
    'firstname':firstname,
    'lastname':lastname,
    'phone':phone,
    'email':email,
    'password':password
  };
}
class EmailVerification{
  final String email;
  final String? pin;
  final String? new_password;

  EmailVerification({required this.email,  this.pin,this.new_password});
  factory EmailVerification.fromJson(Map<String,dynamic>json){
    return EmailVerification(email: json['email'], pin: json['pin'],new_password: json['new_password']);
  }
  Map<String,dynamic> toJson()=>{
    'email':email,
    'pin':pin,
    'new_password':new_password
  };
}