import 'package:fizzy/const/apptheme.dart';
import 'package:fizzy/view/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.r)]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 22,
        ).w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'item 1',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      Counter(),
                      Text(
                        '₹ 150',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  );
                }),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'platform fee',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '₹ 5',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 20.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'delivery fee',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 20.sp),
                      ),
                      Text(
                        '₹ 50',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 20.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TO pay',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 15.sp),
                      ),
                      Text(
                        '₹ 505',
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontSize: 20.sp),
                      ),
                    ],
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
