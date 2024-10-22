import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shoppeapp/constants/constant_fonts.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return const IntlPhoneField(
      initialCountryCode: 'EG',
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Your Number",
          hintStyle: TextStyle(
            color: Color(0xffD2D2D2),
            fontFamily: ralewayFont,
            fontSize: 30,
          )),
    );
  }
}
