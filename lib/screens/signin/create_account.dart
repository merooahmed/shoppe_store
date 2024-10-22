import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';
import 'package:shoppeapp/screens/login/login_screen.dart';
import 'package:shoppeapp/widgets/signin/clipper_container.dart';
import 'package:shoppeapp/widgets/signin/phone_field.dart';
import 'package:shoppeapp/widgets/signin/right_signin_clipper.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                ClipPath(
                  clipper: ClipperContainer(),
                  child: Container(
                      height: MediaQuery.of(context).size.height * .25,
                      width: MediaQuery.of(context).size.width * .5,
                      color: const Color(0xffF2F5FE)),
                ),
                const Positioned(
                  bottom: 90,
                  left: 55,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Create ",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: ralewayFont,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: ralewayFont,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
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
                    ))
              ]),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 50),
                child: DottedBorder(
                  dashPattern: const [10, 10, 10, 10],
                  strokeWidth: 3,
                  color: const Color(0xff004BFE),
                  radius: const Radius.circular(100),
                  strokeCap: StrokeCap.round,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xff004BFE),
                      size: 30,
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 60),
              child: Column(
                children: [
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
                    height: 15,
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
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                  right: 20,
                                ),
                                child: Icon(
                                  Iconsax.eye_slash,
                                  color: Colors.black,
                                  size: 26,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Color(0xffD2D2D2),
                                  fontFamily: ralewayFont,
                                  fontSize: 30)),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 85,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(80)),
                    child: const Padding(
                        padding:
                            EdgeInsets.only(left: 30, bottom: 5, right: 30),
                        child: PhoneField()),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff004CFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: const Text("Done",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                              fontFamily: nunitoSansFont,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: nunitoSansFont,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
