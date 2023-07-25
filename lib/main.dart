import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/them/app_theme.dart';
import 'router/Go router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp.router(
        theme: AppTheme.light(context),
        // theme: ThemeData(
        //
        //     fontFamily: 'BoutrosART',
        // ),
            debugShowCheckedModeBanner: false,
             routerConfig: AppGoRouter().router,

          ),
    );
  }
}
