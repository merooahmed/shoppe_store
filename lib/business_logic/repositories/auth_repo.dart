import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoppeapp/helper/authfirebase_exceptions.dart';
import 'package:shoppeapp/helper/firebase_exception.dart';
import 'package:shoppeapp/helper/format_exception.dart';
import 'package:shoppeapp/helper/platform_exception.dart';
import 'package:shoppeapp/screens/signin/success_screen.dart';

class AuthRepo {
  final _auth = FirebaseAuth.instance;
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    debugPrint("Email done");
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong!,plese try again';
    }
  }

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

  checkEmailVerficationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => const SuccessScreen());
    }
  }
}
