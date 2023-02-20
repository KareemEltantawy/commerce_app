import 'package:commerce_app/features/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constant.dart';
import 'core/router/router.dart';
import 'features/home/home_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeView(),
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          toolbarHeight: 100.0,
          backgroundColor: Colors.white,
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: defaultColor,
            statusBarIconBrightness: Brightness.light
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.w600
          )
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          bodyText2: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),
        )
      ),
    );
  }
}

