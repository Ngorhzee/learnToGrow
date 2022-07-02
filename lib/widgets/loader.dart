import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';

class Loader extends StatelessWidget {
  Loader({Key? key, required this.isLoading}) : super(key: key);
  bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: CircularProgressIndicator(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
