import 'package:flutter/material.dart';
import 'package:level_up_3/modules/CreateAccount/create_account_page.dart';

import 'package:level_up_3/modules/Login/login_page.dart';
import 'package:level_up_3/modules/PassRecovery/pass_recovery_page.dart';
import 'package:level_up_3/modules/Response/response_page.dart';
import 'package:level_up_3/shared/app_colors.dart';

import 'modules/Home/home_page.dart';
import 'modules/Splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LevelUP#3',
      theme: ThemeData(
        primaryColor: AppColors.orange,
        focusColor: AppColors.orange,
        fixTextFieldOutlineLabel: true,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/createaccount": (context) => CreateAccount(),
        "/login": (context) => LoginPage(),
        "/passrecovery": (context) => PassRecovery(),
        "/response": (context) => ResponsePage(),
      },
    );
  }
}
