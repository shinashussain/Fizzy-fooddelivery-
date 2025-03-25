import 'package:fizzy/const/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPAge extends StatelessWidget {
  const PaymentPAge({super.key});

  Widget upiproviders(String imagepath, String providername) {
    return SizedBox(
      height: 70.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
        ).w,
        child: Row(
          children: [
            Container(
              height: 41.h,
              width: 57.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black54,
                    width: .5,
                  )),
              child: Image.asset(imagepath),
            ),
            SizedBox(
              width: 27.w,
            ),
            Text(
              providername,
              style: GoogleFonts.rubik(
                  fontSize: 24.sp, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrountcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'payment  ₹ 505',
          style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w200),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 10).h.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                  width: 53.w,
                  child: Image.asset('assets/upi.png'),
                ),
                Text(
                  ' pay by any upi app',
                  style: GoogleFonts.rubik(
                      fontSize: 20.sp, fontWeight: FontWeight.w200),
                )
              ],
            ),
            Container(
              width: 362.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  upiproviders('assets/googlepay.png', 'Google pay '),
                  upiproviders('assets/phonepay.png', 'Phonepe UPI'),
                  upiproviders('assets/paytm.png', 'Paytm UPI'),
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Text(
              'card',
              style: GoogleFonts.rubik(
                  fontSize: 20.sp, fontWeight: FontWeight.w200),
            ),
            Container(
              height: 74.h,
              width: 362.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 23, horizontal: 36).h,
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 34.sp,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    Text('Add credit or debit card',
                        style: GoogleFonts.rubik(
                            fontSize: 20.sp, fontWeight: FontWeight.w200))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Text(
              'More payment options',
              style: GoogleFonts.rubik(
                  fontSize: 20.sp, fontWeight: FontWeight.w200),
            ),
            Container(
              height: 74.h,
              width: 362.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 23, horizontal: 36).h,
                child: Row(
                  children: [
                    Icon(
                      Icons.payments,
                      size: 34.sp,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    Text('Pay on delivery',
                        style: GoogleFonts.rubik(
                            fontSize: 20.sp, fontWeight: FontWeight.w200))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
