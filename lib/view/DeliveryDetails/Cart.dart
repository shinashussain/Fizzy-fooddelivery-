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
        children: [
          ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
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
                    Container(
                      width: 22.h,
                      height: 63.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '-',
                            style: TextStyle(
                              fontSize: 14,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 22,
                            width: 22,
                            color: Colors.grey,
                            child: Text(
                              '1',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '+',
                            style: TextStyle(
                              fontSize: 14,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '₹ 5',
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'delivery fee',
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '₹ 50',
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TO pay',
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '₹ 505',
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
