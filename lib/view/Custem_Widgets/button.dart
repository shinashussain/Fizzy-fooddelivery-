import 'package:fizzy/const/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustemButton extends StatelessWidget {
  String _Textofbutton;
  CustemButton(this._Textofbutton, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.h,
      width: 360.w,
      decoration: BoxDecoration(
          color: fizzytheme,
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Center(
        child: Text(
          _Textofbutton,
          style: GoogleFonts.rubik(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
      ),
    );
  }
}
