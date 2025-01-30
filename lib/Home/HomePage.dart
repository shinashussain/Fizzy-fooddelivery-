import 'package:fizzy/Home/Foods.dart';
import 'package:fizzy/const/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 33).h,
                  child: Text(
                    'FIZZY',
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 48.sp,
                      color: fizzytheme,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 18),
                  child: IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Foods()),
                      // );
                    },
                    icon: Icon(
                      Icons.account_circle,
                    ),
                    iconSize: 48.sp,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 19).w,
                child: Text(
                  'Order your favourite food!',
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, color: Colors.black45),
                ),
              ),
            ),
            SizedBox(
              height: 47.h,
            ),
            Container(
              height: 60.h,
              width: 390.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 214, 214, 214),
                      blurRadius: 5,
                    ),
                  ]),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10).w,
                        child: Icon(Icons.search),
                      ),
                      hintText: '   Search'),
                  showCursor: false,
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100.h,
                  width: 103.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/burger.png'))),
                ),
                Container(
                  height: 100.h,
                  width: 103.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/biriyani.png'))),
                ),
                Container(
                  height: 100.h,
                  width: 103.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/nodles.png'))),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28).w,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'FOODs',
                  style: GoogleFonts.luckiestGuy(
                      color: Colors.black54, fontSize: 24.sp),
                ),
              ),
            ),
            FoodCArd(),
          ],
        ));
  }
}
