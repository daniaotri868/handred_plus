import 'package:alpha_brand/core/helper/assets_path.dart';
import 'package:alpha_brand/core/utils/AppString.dart';
import 'package:alpha_brand/core/widget/CutstomButton.dart';
import 'package:alpha_brand/router/nameGoRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/AppConfig.dart';
import '../widgets/CustomItemPageView.dart';



class onBoard extends StatefulWidget {
   onBoard({Key? key}) : super(key: key);

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {


  final PageController _pageController = PageController();
  int _currentPage = 0;
  int Dotsindex=0;
   List images=[PngOrJpgPath.itemOneBoard,PngOrJpgPath.itemTwoBoard,PngOrJpgPath.itemThreeBoard];

   List itemText1=[AppText.textPageView1,AppText.textPageView2,AppText.textPageView3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Directionality(
       textDirection: TextDirection.rtl,
       child: Column(
         children: [
           Expanded(
             child: PageView.builder(
               itemBuilder: (context, index) =>CustomItemPageView(
                 image: images[index],
                 title:itemText1[index] ,
                 index: index,
               ),
               itemCount: 3,
               reverse: true,
               scrollDirection: Axis.horizontal,
               controller: _pageController,
               onPageChanged: (index) {
                 setState(() {
                   _currentPage = index;
                 });
               },
             ),
           ),
           Padding(
             padding: REdgeInsetsDirectional.only(bottom: 111.h),

             child:
             ElevatedButton(
               child: Text(AppText.next),
               onPressed: () {
                 print(_currentPage);
                 setState(() {
                   if (_currentPage < images.length ) {
                     _pageController.nextPage(
                       duration:AppConfig.pageViewAnimationDuration,
                       curve: Curves.easeInOut,
                     );
                   }
                   if(_currentPage==2)
                   {
                     context.replaceNamed(NameGoRouter.start);
                   }
                 });
               },
             ),
           ),
         ],
       ),
     ),
    );
  }
}
