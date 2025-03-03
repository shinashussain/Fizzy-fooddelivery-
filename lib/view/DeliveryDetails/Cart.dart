import 'package:fizzy/const/apptheme.dart';
import 'package:fizzy/view/Custem_Widgets/Counter.dart';
import 'package:fizzy/view/Custem_Widgets/button.dart';
import 'package:fizzy/view/DeliveryDetails/SelectAddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgrountcolor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            '3 items added',
            style: GoogleFonts.rubik(
                fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 33.h, horizontal: 33.5.w),
          child: Column(
            spacing: 34.h,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 363.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Cartitem();
                    }),
              ),
              Container(
                width: 363.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(24).r,
                  child: Column(
                    children: [
                      Row(
                        spacing: 33.w,
                        children: [
                          Icon(
                            Icons.schedule,
                            color: green,
                            size: 22.sp,
                          ),
                          Text(
                            'Delivery in 30 mins',
                            style: GoogleFonts.rubik(
                              fontSize: 20.sp,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        spacing: 33.w,
                        children: [
                          Icon(
                            Icons.receipt_long,
                            color: Colors.black54,
                            size: 27.sp,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8.h,
                            children: [
                              Text(
                                'Total Bill  ₹ 200',
                                style: GoogleFonts.rubik(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Incl. taxes, charges',
                                style: GoogleFonts.rubik(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35.w,
              vertical: 33.h,
            ),
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (builder) {
                        return SelectAddress();
                      });
                },
                child: CustemButton('select address  order now'))));
  }
}

class Cartitem extends StatelessWidget {
  const Cartitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 18).r,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageIcon(AssetImage('assets/square_dot.png')),
          SizedBox(
            width: 15.67.w,
          ),
          SizedBox(
            width: 220.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' item one_is',
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  ' ₹150',
                  style: GoogleFonts.rubik(
                      fontSize: 16.sp,
                      color: Colors.black45,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Center(child: Counter())
        ],
      ),
    );
  }
}
