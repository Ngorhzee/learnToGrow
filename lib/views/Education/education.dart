import 'package:flutter/material.dart';
import 'package:learn_to_grow/views/Education/books.dart';

import '../../utils/color.dart';

import '../../utils/text.dart';
import '../../widgets/category_widget.dart';

class Education extends StatelessWidget {
  const Education({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 34,left: 35,right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: AppText.extraBoldmedium('Education')),
              const SizedBox(height: 55,),
              Expanded(child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                  
                
                children:  [
                  CategoryWidget(image: 'assets/books.png',text: 'Books',ctx: context,page:const Books(),),
                  CategoryWidget(image: 'assets/Play.png',text: 'Videos',),
                  CategoryWidget(image: 'assets/Games Folder.png',text: 'Drawing' '\n'  '&'  '\n'  'painting',),
                  CategoryWidget(image: 'assets/Games Folder.png',text: 'Education',),
                  
              ],))
            ],
          ),
        ),
      ),
    );
  }
}