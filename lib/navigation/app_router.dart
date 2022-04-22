

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';


class AppRouter{
  AppRouter({this.ctx});
  
  BuildContext ? ctx;

  Future nextPage( {Widget? page}){
    return Navigator.push(ctx!, CupertinoPageRoute(builder: (context) =>page! ));
  }
  void nextPageOnly({Widget? page}){
    Navigator.pushAndRemoveUntil(ctx!, MaterialPageRoute(builder: (context)=>page!), (route) => false);
  }
}