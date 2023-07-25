
import 'dart:async';
import 'package:alpha_brand/core/helper/Appcolor.dart';
import 'package:alpha_brand/router/nameGoRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/AppConfig.dart';
import '../../../../core/helper/assets_path.dart';
import '../../../../core/utils/AppString.dart';
import '../../../../core/utils/customText.dart';


class Splash extends StatefulWidget {
  const Splash ({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override

  Widget build(BuildContext context) {
    Future.delayed(AppConfig.splashScreenDuration).whenComplete(() async {
      if (context.mounted) context.replaceNamed(NameGoRouter.welcom);
    });
    return Scaffold(
      backgroundColor: Colors.transparent,
    body: Container(
      width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage(PngOrJpgPath.backgroundSplash),fit:BoxFit.fill ),
      // color: Color(0xffEC6416)
    ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset(PngOrJpgPath.iconSplash),
            Text(AppText.titleSplashe1,style: Theme.of(context).textTheme.bodyLarge),
            Text(AppText.titleSplashe2,style: Theme.of(context).textTheme.bodyLarge)


          ],
        ),
      ),
    ),
    );
  }
}
