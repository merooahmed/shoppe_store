import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:shoppeapp/business_logic/cubit/auth_cubit.dart';
import 'package:shoppeapp/business_logic/dependency_injection.dart' as di;
import 'package:shoppeapp/firebase_options.dart';
import 'package:shoppeapp/onboarding/shoppe_onboarding.dart';
import 'package:shoppeapp/screens/login/login_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  di.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: GetMaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            BlocProvider.of<AuthCubit>(context).redirect();
            if (state is LoginRedirect) {
              return const LoginScreen();
            } else {
              return const ShoppeOnboarding();
            }
          },
        ),
      ),
    );
  }
}
