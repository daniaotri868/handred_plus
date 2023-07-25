import 'package:alpha_brand/core/utils/AppString.dart';
import 'package:alpha_brand/core/utils/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/Appcolor.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       // crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         CustomText(
             title: AppText.AccountCreateAccount,
             color: AppColor.benDarkBlack,
             size: 27.sp
         ),
         CustomText(
             title: AppText.Accountsubtitle,
             color: AppColor.benDarkBlack,
             size: 27.sp
         ),

       ],
     ),
    );
  }
}
