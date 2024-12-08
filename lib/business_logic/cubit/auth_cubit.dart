import 'dart:async';

import 'package:bloc/bloc.dart';


import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/material.dart';


import 'package:get/get.dart';


import 'package:get/get_core/src/get_main.dart';


import 'package:shared_preferences/shared_preferences.dart';


import 'package:shoppeapp/business_logic/dependency_injection.dart';


import 'package:shoppeapp/business_logic/repositories/auth_repo.dart';
import 'package:shoppeapp/helper/alert_widgets.dart';


import 'package:shoppeapp/screens/home/home.dart';


import 'package:shoppeapp/screens/login/login_screen.dart';
import 'package:shoppeapp/screens/signin/success_screen.dart';
import 'package:shoppeapp/screens/signin/verfiyemail_screen.dart';


part 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  

  AuthCubit() : super(AuthInitial());


  final _auth = FirebaseAuth.instance;


  final AuthRepo authRepo = getIt<AuthRepo>();


  final TextEditingController emailController = TextEditingController();


  final TextEditingController passwordController = TextEditingController();


  final TextEditingController phoneController = TextEditingController();


  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();


  
  void redirect() async {

    final prefs = await SharedPreferences.getInstance();

 final authUser =_auth.currentUser
 ;
    var isFirstTime = "isFirstTime";
    print(authUser);


    if (authUser != null) {
if (authUser.emailVerified) {
  Get.offAll(() => const HomeScreen());
}
   else{

      Get.offAll(() => EmailVerficationScreen());
   }   


      
    } else {

      if (!prefs.containsKey(isFirstTime)) {

        await prefs.setBool(isFirstTime, true);

      } else {

        await prefs.setBool(isFirstTime, false);

      }


      if (prefs.getBool(isFirstTime) != true) {

        emit(LoginRedirect());

      }

    }

  }


  Future<void> registerWithEmailAndPassword() async {

    try {

      if (!signUpFormKey.currentState!.validate()) {

        return;

      }


      await authRepo.registerWithEmailAndPassword(

          emailController.text.trim(), passwordController.text.trim());

await Get.to(() => EmailVerficationScreen(

            email: emailController.text.trim(),

          ));
      emit(SignupSuccess());

    } catch (e) {

      emit(SignupFailed(message: e.toString()));

    }

  }
  Future<void> sendEmailVerification() async {

    try {

      await authRepo.sendEmailVerification();

      Alerts.successSnakBar(

        title: 'Email sent',

        message: 'Please check your inbox  for email verification',

      );

    } catch (e) {

      Alerts.errorSnakBar(title: 'Oh Snap', message: e.toString());

    }

  }
  setTimerForAutoRedirect() {

    Timer.periodic(const Duration(seconds: 2), (timer) async {

      await FirebaseAuth.instance.currentUser?.reload();

      final user = FirebaseAuth.instance.currentUser;

      if (user?.emailVerified ?? false) {

        timer.cancel();
        await Get.to(() => const SuccessScreen());


      }

    });

  }

}

