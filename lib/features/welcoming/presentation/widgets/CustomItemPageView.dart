import 'package:alpha_brand/core/helper/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/Appcolor.dart';
import '../../../../core/utils/customText.dart';
import 'CustomDotsIndicator.dart';

class CustomItemPageView extends StatelessWidget {
  final image;
  final title;
  final index;
  const CustomItemPageView({Key? key, this.image, this.title, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(PngOrJpgPath.backgroundwelcom)
            ,fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          Image.asset(image),
          Spacer(),
          CustomDotsIndicator(index: index),
          Spacer(),
          Text(title,style:Theme.of(context).textTheme.titleSmall ,)
          // CustomText(title: title, color: AppColor.benBlack, ),
          ,
          Spacer(),



        ],
      ),
    );
  }
}
