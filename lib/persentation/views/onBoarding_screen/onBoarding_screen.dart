import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:resturant_app/persentation/managers/Assets_Manager/ImageAssets.dart';
import 'package:resturant_app/persentation/managers/app_values.dart';
import 'package:resturant_app/persentation/managers/color_manager.dart';
import 'package:resturant_app/persentation/managers/font_font.dart';
import 'package:resturant_app/persentation/managers/routes_manager.dart';
import 'package:resturant_app/persentation/managers/string_manager.dart';
import 'package:resturant_app/persentation/managers/text_styles_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<OnBoardingParameters>_parameters=[
    OnBoardingParameters(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1, ImageAssets.OnBoarding1),
    OnBoardingParameters(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2, ImageAssets.OnbOarding2),
    OnBoardingParameters(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3, ImageAssets.OnbOarding3),
  ];
  PageController _pageController=PageController();
   int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:ColorManager.white ,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark,statusBarColor: ColorManager.white),
      ),
      body: PageView.builder(
        itemCount: _parameters.length,
          onPageChanged:(int){
          setState(() {
            _currentIndex=int;
          });
          } ,
          itemBuilder:( context,int)=>OnBoardingColumn(_parameters[int],_currentIndex),
          controller: _pageController,
      ),
      bottomSheet: _getBottomSheet(),


    );
  }
  Widget _getBottomSheet(){
    return Container(
      color: ColorManager.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  child: Text("${AppStrings.skip}",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: ColorManager.primary),),
                ),
              ),
            ),
          ),
          Container(
            color: ColorManager.primary,
            height: AppSize.s60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(ImageAssets.leftArrow,color: ColorManager.white,height: AppSize.s28,),
                    ),
                  onTap: (){
                    _pageController.animateToPage(_getPreviousPage(), duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);

                  },
                ),
                Row(
                  children: [
                    for(int i=0;i<3;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:_getProperCircle(i),
                      )

                    ,
                  ],
                ),
                GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(ImageAssets.rightArrow,color: ColorManager.white,height: AppSize.s20,),
                    ),
                  onTap: (){
                      _pageController.animateToPage(_getNextPage(), duration: Duration(milliseconds: 30), curve: Curves.bounceInOut);
                  },
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
 int _getPreviousPage(){
   int previousIndex=_currentIndex--;
   if(previousIndex<0){
     previousIndex= _parameters.length-1;
   }
   print (previousIndex);

   return previousIndex;
 }
 int _getNextPage(){
   int nextIndex=_currentIndex ++;
   if(nextIndex==_parameters.length){
     nextIndex=0;
   }
   print (nextIndex);
   return nextIndex;
 }
 Widget _getProperCircle(int i){
    if(i== _currentIndex) {
    return  SvgPicture.asset(ImageAssets.hollowCircle, color: ColorManager.white,
        height: AppSize.s14,);
    } else{
      return  SvgPicture.asset(ImageAssets.solidCircle, color: ColorManager.white,height: AppSize.s14);

    }
  }


}
class OnBoardingColumn extends StatelessWidget {
  OnBoardingParameters onBoardingParameters;
  int _currentIndex;

  OnBoardingColumn(this.onBoardingParameters,this._currentIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(onBoardingParameters.title1,style: Theme.of(context).textTheme.displayLarge,),
        ),
        Padding(padding:const EdgeInsets.all(AppPadding.p8),
          child: Text(onBoardingParameters.title2,style: Theme.of(context).textTheme.displayLarge,),
        ),
        SizedBox(height: AppSize.s60,),
        Image(image: AssetImage(onBoardingParameters.Image))
      ],
    ),

    );
  }
}

class OnBoardingParameters{
  String title1;
  String title2;
  String Image;

  OnBoardingParameters(this.title1, this.title2, this.Image);
}

