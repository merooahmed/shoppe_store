import 'package:flutter/material.dart';

import 'package:shoppeapp/constants/constant_fonts.dart';
import 'package:shoppeapp/screens/signin/create_account.dart';

class ShoppeOnboarding extends StatelessWidget {
  const ShoppeOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 1)
                  ]),
              child: const Center(
                child: Image(
                  height: 100,
                  image: AssetImage("assets/images/shoppe1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Shoppe",
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  fontFamily: ralewayFont,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Beautiful eCommerce UI Kit for your online store",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  fontFamily: nunitoSansFont,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 75,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff004CFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text("Let's get Started",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        fontFamily: nunitoSansFont,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I already have an account",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: nunitoSansFont,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    color: const Color(0xff004CFF),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount()));
                    },
                    icon: const Icon(Icons.arrow_circle_right_outlined)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
