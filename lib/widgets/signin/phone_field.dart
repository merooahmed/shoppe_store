import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shoppeapp/business_logic/cubit/auth_cubit.dart';

import 'package:shoppeapp/constants/constant_fonts.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: context.read<AuthCubit>().phoneController,
      initialCountryCode: 'EG',
      decoration: const InputDecoration(
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
