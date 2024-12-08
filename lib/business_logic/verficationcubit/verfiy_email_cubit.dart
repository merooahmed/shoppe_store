import 'dart:async';


import 'package:bloc/bloc.dart';


import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter/services.dart';


import 'package:get/get.dart';


import 'package:shoppeapp/helper/authfirebase_exceptions.dart';


import 'package:shoppeapp/helper/firebase_exception.dart';


import 'package:shoppeapp/helper/format_exception.dart';


import 'package:shoppeapp/helper/platform_exception.dart';


import 'package:shoppeapp/screens/signin/success_screen.dart';


part 'verfiy_email_state.dart';


class VerfiyEmailCubit extends Cubit<VerfiyEmailState> {

  VerfiyEmailCubit() : super(VerfiyEmailInitial());
  

  final _auth = FirebaseAuth.instance;


  Future<void> sendEmailVerification() async {

    try {

      await _auth.currentUser?.sendEmailVerification();

    } on FirebaseAuthException catch (e) {

      throw TFirebaseAuthException(e.code).message;

    } on FirebaseException catch (e) {

      throw TFirebaseException(e.code).message;

    } on FormatException catch (_) {

      throw const TFormatException();

    } on PlatformException catch (e) {

      throw TPlatformException(e.code).message;

    } catch (e) {

      throw 'Something went wrong!,plese try again';

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


  checkEmailVerficationStatus() async {

    final currentUser = FirebaseAuth.instance.currentUser;


    if (currentUser != null && currentUser.emailVerified) {

      Get.off(() => const SuccessScreen());

    }

  }

}

