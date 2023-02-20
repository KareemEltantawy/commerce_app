//import 'package:commerce_app/core/router/router.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
//class OnboardingModel {
//  final String image;
//  final String title;
//  final String description;
//
//  OnboardingModel({required this.image, required this.title, required this.description});
//}
//
//class OnboardingView extends StatefulWidget {
//  @override
//  _OnboardingViewState createState() => _OnboardingViewState();
//}
//
//class _OnboardingViewState extends State<OnboardingView> {
//  List<OnboardingModel> onboarding = [
//    OnboardingModel(
//      image: 'assets/images/man.png',
//      title: 'Your style tell about you',
//      description: 'There are many clothes with designs that are suitable for you today',
//    ),
//    OnboardingModel(
//      image: 'assets/images/man.png',
//      title: 'Leave up your lifestyle',
//      description: 'There are many clothes with designs that are suitable for you today',
//    ),
//  ];
//  var onboardingController = PageController();
//  bool isLast = false;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      backgroundColor: Color.fromRGBO(33, 122, 126, 1),
//      body: Container(
//        decoration: BoxDecoration(
//          color: Color.fromRGBO(33, 122, 126, 1),
////          gradient: LinearGradient(
////            begin: Alignment.topCenter,
////            end: Alignment.bottomCenter,
////            colors: [
////              Color.fromRGBO(33, 122, 126, 1),
////              Color.fromRGBO(33, 122, 126, 0),
////            ],
////          ),
//        ),
//        child: Column(
//          children: [
//            SizedBox(height: MediaQuery.of(context).padding.top,),
//            Expanded(
//              child: PageView.builder(
//                controller: onboardingController,
//                onPageChanged: (index){
//                  if(index == onboarding.length-1){
//                    isLast = true;
//                  }else{
//                    isLast=false;
//                  }
//                },
//                itemBuilder: (context, index) => buildItem(onboarding[index]),
//                itemCount: onboarding.length,
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(20.0),
//              decoration: BoxDecoration(
//                border: Border.all(
//                  width: 0.5,
//                  color: Colors.grey
//                ),
//                borderRadius: BorderRadiusDirectional.only(
//                  topStart: Radius.circular(22.0),
//                  topEnd: Radius.circular(22.0),
//                ),
//                color: Color.fromRGBO(33, 122, 126, 0),
//              ),
//              child: Column(
//                children: [
//                  SmoothPageIndicator(controller: onboardingController, count: onboarding.length,effect: ExpandingDotsEffect(
//                    dotWidth: 10.0,
//                    dotHeight: 10.0,
//                    dotColor: Colors.grey,
//                    activeDotColor: Colors.white,
//                    spacing: 5.0,
//                    expansionFactor: 2.0,
//                  ),),
//                  SizedBox(height: 20.0,),
//                  Container(
//                    width: double.infinity,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(8.0),
//                        color: Color.fromRGBO(207, 231, 232, 1)
//                    ),
//                    child: MaterialButton(onPressed: (){
//                      if(isLast){
////                        MagicRouter.navigateTo();
//                      }else{
//                        onboardingController.nextPage(
//                            duration: Duration(milliseconds: 750,)
//                            ,curve: Curves.fastLinearToSlowEaseIn);
//                      }
//                    },
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Text('Continue',style: TextStyle(
//                          fontSize: 14.0,
//                      color: Color.fromRGBO(33, 122, 126, 1)
//                        ),),
//                        Icon(Icons.arrow_forward,color: Color.fromRGBO(33, 122, 126, 1),size: 18.0,)
//                      ],
//                    ),
//                    ),
//                  )
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//  Widget buildItem(model) => Stack(
//        alignment: AlignmentDirectional.bottomStart,
//        children: [
//          Image(image: AssetImage(model.image),fit: BoxFit.cover,width: double.infinity,),
//          Padding(
//            padding: const EdgeInsets.all(16.0),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                  Text(model.title,style: TextStyle(
//                    fontWeight: FontWeight.w400,
//                    fontSize: 32.0,
//                    color: Colors.white
//                  ),),
//                  Text(model.description,style: TextStyle(
//                    fontWeight: FontWeight.w500,
//                    fontSize: 14.0,
//                    color: Colors.grey[300],
//                  ),),
//              ],
//            ),
//          )
//        ],
//      );
//}
