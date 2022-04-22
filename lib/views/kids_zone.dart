import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:intl/intl.dart';
import 'package:learn_to_grow/utils/text.dart';
import 'package:learn_to_grow/widgets/card.dart';
import 'package:learn_to_grow/widgets/video_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class KidsZone extends StatefulWidget {
  const KidsZone({Key? key}) : super(key: key);

  @override
  State<KidsZone> createState() => _KidsZoneState();
}

class _KidsZoneState extends State<KidsZone> {
  static final DateTime now = DateTime.now();
  String formattedTime = DateFormat.Hm().format(now);
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');

  final String formatted = formatter.format(now);
  late PersistentTabController _controller;

//_controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Stack(
          children:[ Column(
            children: [
              Container(
                height: 393,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 44, right: 13, left: 45),
                      child: Row(
                        children: [
                          //search bar
                          Container(
                            height: 36,
                            width: 262,
                            //  margin: const EdgeInsets.only(top: 44,right: 45),
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(right: 31, left: 27),
                                hintText: 'Search',
                                fillColor: kWhiteColor,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kBlackColor),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    Card(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                      elevation: 3,
                      child: Container(
                        height: 59,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(11)),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 37, bottom: 2),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.extraBoldsmall(formattedTime),
                                  AppText.lightSmall(formatted)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 90,),
              Expanded(child: ListView.builder(
                itemCount: 10,
                itemBuilder:(BuildContext context, int index) {
                return const VideoWidget();
              }), ),
            ],
          ),
          const Positioned(
            left: 25,
            right: 25,
            top: 250,
            //bottom: 429,
            child: KidsZoneWidget(image: 'assets/Upgrade.png',text: "Kid's Corner",)
          )
          ]
        ),

      ),
    );
  }
}
