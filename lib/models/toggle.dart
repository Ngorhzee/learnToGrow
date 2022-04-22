import 'package:flutter/cupertino.dart';
import 'package:learn_to_grow/utils/color.dart';

class ToggleClass{
  bool isColored = false;
  late Color color;

  changeColor(){
    isColored?kWhiteColor:color;
  }

}