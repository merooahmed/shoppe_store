import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


part 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {

  AuthCubit() : super(AuthInitial());


  void redirect() async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool("firstOne", true);

    if (prefs.getBool("firstOne") != true) {

      emit(LoginRedirect());
       prefs.setBool("firstOne", false);

    }

  }


 

}

