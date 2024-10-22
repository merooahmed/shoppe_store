import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoppeapp/business_logic/cubit/auth_cubit.dart';
import 'package:shoppeapp/onboarding/shoppe_onboarding.dart';
import 'package:shoppeapp/screens/login/login_screen.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)  {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<AuthCubit, AuthState>(
          
          builder: (context, state) {
            BlocProvider.of<AuthCubit>(context).redirect();
            if (state is LoginRedirect) {
              return const LoginScreen();
            } else   {
           
          return const ShoppeOnboarding();
            }
          },
        ),
      ),
    );
  }
}
