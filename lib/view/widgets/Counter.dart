import 'package:fizzy/const/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 63.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: .5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Buttons(Icons.remove),
          Container(
            width: 20.6.w,
            height: 22.h,
            color: const Color.fromARGB(255, 208, 208, 208),
            child: Center(
              child: Text('1'),
            ),
          ),
          Buttons(Icons.add)
        ],
      ),
    );
  }

  Widget Buttons(icon) {
    return InkWell(
      onTap: () {
        print('button pressed');
      },
      child: SizedBox(
        width: 20.6.w,
        height: 22.h,
        child: Center(
          child: Icon(
            icon,
            color: green,
            size: 14.sp,
          ),
        ),
      ),
    );
  }
}
