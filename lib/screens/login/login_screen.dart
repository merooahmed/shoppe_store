import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';
import 'package:shoppeapp/screens/login/widgets/halfcircle_clipper.dart';
import 'package:shoppeapp/screens/login/widgets/logincliper.dart';
import 'package:shoppeapp/screens/recoverypassword/recovery_password_screen.dart';
import 'package:shoppeapp/screens/signin/create_account.dart';
import 'package:shoppeapp/widgets/signin/right_signin_clipper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .45,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: LoginCliper(),
                    child: Container(
                        height: MediaQuery.of(context).size.height * .35,
                        width: MediaQuery.of(context).size.width * .6,
                        color: const Color(0xffF2F5FE)),
                  ),
                  ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.width * .4,
                        color: const Color(0xff004BFE)),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: ClipPath(
                      clipper: RightSigninClipper(),
                      child: Container(
                        height: 250,
                        width: 250,
                        color: const Color(0xff004BFE),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login ",
                    style: TextStyle(
                        fontSize: 58,
                        fontFamily: ralewayFont,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Good to see you back! ",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: nunitoSansFont,
                            fontWeight: FontWeight.w300),
                      ),
                      Icon(
                        Iconsax.heart5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                      height: 85,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(80)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 27, bottom: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Color(0xffD2D2D2),
                                  fontFamily: ralewayFont,
                                  fontSize: 30)),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 85,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(80)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 27, bottom: 25),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Color(0xffD2D2D2),
                                  fontFamily: ralewayFont,
                                  fontSize: 30)),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot your Password ?",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: ralewayFont,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const PasswordScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff004CFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: const Text("Next",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              fontFamily: nunitoSansFont,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => CreateAccount());
                        },
                        child: const Text(
                          "Sing Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            fontFamily: nunitoSansFont,
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
