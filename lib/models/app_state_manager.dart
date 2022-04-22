import 'package:flutter/material.dart';
import 'dart:async';

class AppStateManager extends ChangeNotifier{
  bool _initialised =false;
  bool _loggedin =false;
  bool _signedin =false;
  bool _onboarding =false;

  bool get isInitialised => _initialised;
  bool get isLoggedIn => _loggedin;
  bool get isSignedIn => _signedin;
  bool get isOnboarding => _onboarding;

  void initialisedApp(){
    Timer(
      const Duration(milliseconds: 2000),
       (){
          _initialised=true;
          
          notifyListeners();
       }
    );
    
  }
  void login(String email ,String password){
    _loggedin=true;
    notifyListeners();
  }
  void signin(String email ,String password){
    _signedin =true;
    notifyListeners();
  }
  void onboarding (){
    _onboarding =true;
  }
}