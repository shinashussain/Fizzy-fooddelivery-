import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: FoodCArd(),
        );
      },
    );
  }
}

class FoodCArd extends StatelessWidget {
  const FoodCArd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224.h,
      width: 174.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 204, 204, 204),
              blurRadius: 5.r,
            ),
          ]),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Positioned(
            left: 130.w,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
              iconSize: 24.sp,
              color: Colors.black,
            ),
          ),
          Positioned(
              top: 23.h,
              left: 36.r,
              child: Container(
                height: 103.h,
                width: 102.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/biriyani.png'))),
              )),
          Positioned(
            top: 139.h,
            left: 14.w,
            child: Text(
              'biriyany',
              style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 160.h,
            left: 14.w,
            child: Text(
              '₹ 150',
              style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 172.h,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.star),
              color: Colors.amber,
              iconSize: 16.sp,
            ),
          ),
          Positioned(
            top: 192.h,
            left: 40.w,
            child: Text('4.8',
                style:
                    GoogleFonts.roboto(fontSize: 16.sp, color: Colors.black)),
          ),
          Positioned(
            top: 172.h,
            left: 130.w,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline),
              iconSize: 20.sp,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
