import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/Appcolor.dart';



class CustomDotsIndicator extends StatelessWidget {
  int index;
   CustomDotsIndicator({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: 2-index,
      decorator: DotsDecorator(
        color: Colors.grey,
        activeColor: AppColor.orange,
        size: Size(31, 5),
        activeSize: Size(31, 5),
        spacing: EdgeInsets.all(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // تعيين زوايا المستطيل
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // تعيين زوايا المستطيل
        ),
      ),

    );
  }
}
