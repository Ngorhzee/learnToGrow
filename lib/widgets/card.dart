import 'package:flutter/material.dart';
import 'package:learn_to_grow/utils/color.dart';
import 'package:learn_to_grow/utils/text.dart';

class KidsZoneWidget extends StatelessWidget {
  const KidsZoneWidget({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return 
          Card(
            elevation: 3,
            color: kPrimaryColor.shade700,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [
                //   BoxShadow(
                //       color: kBlackColor.withOpacity(0.25),
                //       blurRadius: 0.25,
                //     spreadRadius: -0.25
                //   )
                // ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kPrimaryColor.withOpacity(0.5),
                  // const  Color.fromARGB(255, 205, 75, 1).withOpacity(0.9),
                   Color.fromARGB(255, 204, 142, 55).withOpacity(0.5),
                  // const  Color.fromARGB(255, 255, 255, 0).withOpacity(1),
                    
                     
                  ],
                ),
              ),
              child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppText.extraBoldmedium(text),
                      ],
                    ),
                    Padding(
                       padding:const EdgeInsets.only(bottom: 25,top: 12,),
                      child: Image.asset(
                        
                        image,
                        height: 154,
                        width: 149,
                      ),
                    )
                  ],
                ),
            ),
          );
          
         
  }
}
