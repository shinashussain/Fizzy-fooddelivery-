import 'package:fizzy/const/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: 303.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.r)]),
      child: Column(
        children: [],
      ),
    );
  }
}
