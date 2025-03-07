import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  Widget buildcategorybutton(IconData icon, String label, double width) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 21,
          color: Colors.black54,
        ),
        label: Text(
          label,
          style: GoogleFonts.rubik(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            foregroundColor: Colors.black26,
            side: BorderSide(color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            minimumSize: Size(width, 32)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 62.h,
            ),
            Container(
              height: 66.h,
              width: 360.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                      color: const Color.fromARGB(255, 96, 13, 8), width: .5),
                  color: Color.fromRGBO(215, 201, 8, 100)),
              child: Padding(
                padding: const EdgeInsets.all(10).r,
                child: Text(
                  ' A detailed address will help our Delivery partner reach your doorstep easily',
                  style: GoogleFonts.rubik(
                    color: const Color.fromARGB(255, 96, 13, 8),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26).h,
              child: Text(
                'SAVE AS',
                style: GoogleFonts.rubik(
                  fontSize: 14.sp,
                  color: Colors.black54,
                ),
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                buildcategorybutton(Icons.home, 'Home', 111),
                buildcategorybutton(Icons.work, 'Work', 111),
                buildcategorybutton(Icons.group, 'Friends &  Family', 196),
                buildcategorybutton(Icons.location_on, 'Others', 111)
              ],
            )
          ],
        ),
      ),
    );
  }
}
