import 'package:flutter/material.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';
import 'package:shoppeapp/screens/login/widgets/halfcircle_clipper.dart';
import 'package:shoppeapp/screens/login/widgets/logincliper.dart';
import 'package:shoppeapp/screens/recoverypassword/passwordcode_recovery.dart';
import 'package:shoppeapp/widgets/signin/right_signin_clipper.dart';

class RecoveryPasswordScreen extends StatelessWidget {
  const RecoveryPasswordScreen({super.key});
  final bool isChecked = true;
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
                      "How you would like to restore your password? ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: ralewayFont,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 85,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xffE5EBFC),
                        borderRadius: BorderRadius.circular(80)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 130, top: 27, bottom: 25),
                      child: Row(
                        children: [
                          const Text(
                            "SMS",
                            style: TextStyle(
                                color: Color(0xff1C60FE),
                                fontSize: 15,
                                fontFamily: ralewayFont,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 75,
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all<Color>(
                              const Color(0xff1C60FE),
                            ),
                            value: isChecked,
                            onChanged: (value) {},
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 85,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFEBEB),
                        borderRadius: BorderRadius.circular(80)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 130, top: 27, bottom: 25),
                      child: Row(
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: ralewayFont,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 75,
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.all<Color>(
                              const Color(0xffF8CECE),
                            ),
                            value: isChecked,
                            onChanged: (value) {},
                          )
                        ],
                      ),
                    ),
                  ),
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
                                    const PasswordCodeRecovery()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff004CFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: const Text("Next",
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
