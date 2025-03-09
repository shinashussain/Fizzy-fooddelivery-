import 'package:fizzy/view/Custem_Widgets/button.dart';
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
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
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
                    color: Color.fromRGBO(249, 255, 178, 0.886)),
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
              ),
              SizedBox(
                height: 25.h,
              ),
              TextField(
                showCursor: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0).h,
                    hintText: '    Hose  /  Flat  /  Block No ',
                    hintStyle: GoogleFonts.rubik(
                      color: Colors.black45,
                      fontSize: 16.sp,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54))),
              ),
              SizedBox(
                height: 25.h,
              ),
              TextField(
                showCursor: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0).h,
                    hintText: '   Area / Apartment / Road  (RECOMMENDED)',
                    hintStyle: GoogleFonts.rubik(
                        color: Colors.black45, fontSize: 16.sp),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54)),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54))),
              ),
              SizedBox(
                height: 33.h,
              ),
              Text(
                'direction to reach',
                style: GoogleFonts.rubik(
                    fontSize: 15.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 51.h,
                width: 360.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20)
                          .h
                          .w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Tap to record voice direction',
                        style: GoogleFonts.rubik(
                            fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        width: 65.w,
                      ),
                      Icon(
                        Icons.mic,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              SizedBox(
                width: 360.w,
                height: 108.h,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintText: "Write here",
                    hintStyle: GoogleFonts.rubik(fontSize: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    contentPadding: EdgeInsets.all(15).h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(35).w.h,
        child: CustemButton('Save address and order now'),
      ),
    );
  }
}
