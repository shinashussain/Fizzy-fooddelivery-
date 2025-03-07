import 'package:fizzy/const/apptheme.dart';
import 'package:fizzy/view/DeliveryDetails/Addresses/SavedAddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAddress extends StatelessWidget {
  const SelectAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: backgrountcolor),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(19.r),
              child: Text(
                'Select an adress',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Divider(
            indent: 0,
            endIndent: 0,
            color: Colors.black38,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 27.w,
              vertical: 17.h,
            ),
            child: Container(
              height: 49.h,
              width: 376.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14).r,
                    child: Text(
                      '+   add address',
                      style: GoogleFonts.rubik(
                        fontSize: 24.sp,
                        color: fizzytheme,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 13.15).r,
                    child: Icon(
                      Icons.chevron_right,
                      size: 30.sp,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5).w,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                      indent: 0,
                      endIndent: 8.w,
                      color: Colors.black38,
                      height: 0),
                ),
                Text(
                  'SAVED ADDRESSES',
                  style:
                      GoogleFonts.rubik(fontSize: 16.sp, color: Colors.black38),
                ),
                Expanded(
                  child: Divider(
                      indent: 8.w,
                      endIndent: 0,
                      color: Colors.black38,
                      height: 0),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return SavedAddress();
            },
          )
        ],
      ),
    );
  }
}
