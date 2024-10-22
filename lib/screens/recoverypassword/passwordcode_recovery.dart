import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';
import 'package:shoppeapp/screens/login/widgets/halfcircle_clipper.dart';
import 'package:shoppeapp/screens/login/widgets/logincliper.dart';
import 'package:shoppeapp/screens/recoverypassword/passwordcode_recovery.dart';
import 'package:shoppeapp/screens/recoverypassword/setupnewpassword_screen.dart';
import 'package:shoppeapp/widgets/signin/right_signin_clipper.dart';

class PasswordCodeRecovery extends StatelessWidget {
  const PasswordCodeRecovery({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .25,
              child: const Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: SizedBox(
                        height: 300,
                        child: Image(
                            image: AssetImage(bubble2), fit: BoxFit.fill)),
                  ),
                  Positioned(
                      right: 0,
                      child: SizedBox(
                        height: 200,
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(bubble1),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Center(
                        child: SizedBox(
                          height: 200,
                          child: Image(
                            image: AssetImage(profilePhoto),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Password Recovery ",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: ralewayFont,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      "Enter 4-digits code we sent you on your phone number ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: ralewayFont,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      "+98*******00 ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: ralewayFont,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 150, right: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            cursorColor: const Color(0xff004CFF),
                            onSaved: (pin1) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: const TextStyle(
                              fontFamily: nunitoSansFont,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin2) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: const TextStyle(
                              fontFamily: nunitoSansFont,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin3) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: const TextStyle(
                              fontFamily: nunitoSansFont,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin4) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: const TextStyle(
                              fontFamily: nunitoSansFont,
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(height: 30),
                  const SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SetUpNewPassword()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff004CFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: const Text("Save",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w200,
                              fontFamily: nunitoSansFont,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
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
