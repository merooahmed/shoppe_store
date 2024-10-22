import 'package:flutter/material.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';

import 'package:shoppeapp/screens/recoverypassword/passwordcode_recovery.dart';

class SetUpNewPassword extends StatelessWidget {
  const SetUpNewPassword({super.key});

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
                      "Please, setup a new password for your account ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: ralewayFont,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                      height: 85,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 27, bottom: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "New Password",
                              hintStyle: TextStyle(
                                color: Color(0xffD2D2D2),
                                fontFamily: ralewayFont,
                                fontSize: 30,
                              )),
                        ),
                      )),
                  const SizedBox(height: 20),
                  Container(
                      height: 85,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 27, bottom: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Repeat Password",
                              hintStyle: TextStyle(
                                color: Color(0xffD2D2D2),
                                fontFamily: ralewayFont,
                                fontSize: 30,
                              )),
                        ),
                      )),
                  const SizedBox(
                    height: 80,
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
