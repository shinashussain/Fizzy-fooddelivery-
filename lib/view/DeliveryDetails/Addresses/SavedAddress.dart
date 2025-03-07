import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedAddress extends StatelessWidget {
  const SavedAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 15).r,
      child: Container(
        width: 376.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 20,
          ).r,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.home,
                size: 25.sp,
                color: Colors.black54,
              ),
              SizedBox(
                width: 16.33.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'home',
                    style: GoogleFonts.rubik(
                        fontSize: 16.sp, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    width: 279.w,
                    child: Text(
                      'address 1  space  -  space area and other details',
                      style: GoogleFonts.rubik(
                          fontSize: 16.sp, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'phone number:',
                        style: GoogleFonts.rubik(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        '+91 **********',
                        style: GoogleFonts.rubik(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  print('button taped');
                },
                child: Icon(
                  Icons.more_vert,
                  size: 25.sp,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
