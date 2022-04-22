import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_to_grow/utils/text.dart';

import '../constants/text_style.dart';
import '../utils/color.dart';

class TextEditing extends StatelessWidget {
  const TextEditing(
      {Key? key,
      required this.text,
      required this.type,
      this.password = false,
      required this.text2,
      required this.controller})
      : super(key: key);
  final String text;
  final TextInputType type;
  final bool password;
  final String text2;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.boldsmall(
            text2,
            centered: false,
          ),
          TextFormField(
            obscureText: password ? true : false,
            keyboardType: type,
            cursorColor: kBlackColor,
            style: regularMediumStyle,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 34, right: 34, top: 13),
              fillColor: kWhiteColor,
              hintText: (text),
              hintStyle: regularSmallStyle,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              filled: true,
              //  focusColor: const Color(0xffEAEAEA)
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
