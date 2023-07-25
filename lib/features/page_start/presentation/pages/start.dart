import 'package:alpha_brand/core/helper/assets_path.dart';
import 'package:alpha_brand/core/utils/AppString.dart';
import 'package:alpha_brand/core/helper/Appcolor.dart';
import 'package:alpha_brand/core/utils/customText.dart';
import 'package:alpha_brand/core/widget/CutstomButton.dart';
import 'package:alpha_brand/router/nameGoRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       decoration: const BoxDecoration(
         image: DecorationImage(
           image: AssetImage(PngOrJpgPath.backgroundStart),
           fit: BoxFit.fitWidth,
           alignment: AlignmentDirectional.topStart,
         )
       ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            318.verticalSpace,
            Image.asset(PngOrJpgPath.iconStart),
            const Spacer(),
            Padding(
              padding: REdgeInsetsDirectional.only(start: 52.w,end: 52.w),
              child: Text(
                AppText.startTilte,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,),
            ),
            const Spacer(flex: 2),
            ElevatedButton(
                onPressed:(){},
                child: Text(AppText.startLogin)
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.white,
                )
               , onPressed:(){
                  context.replaceNamed(NameGoRouter.CreateAccount);
                },
                child: Text(
                  AppText.startCreateAccount,style: TextStyle(color:AppColor.orange ),)
            ),
            const Spacer(),
          ],
        ),
      ) ,
    );
  }
}
