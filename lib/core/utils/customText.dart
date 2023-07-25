

import 'package:alpha_brand/core/them/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String title;
  Color color;
  double size;
   CustomText({Key? key,required this.title,required this.color,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,style:TextStyle(fontSize: size),
        textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,

    );
  }
}
