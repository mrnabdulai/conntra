import 'package:flutter/material.dart';
import 'package:contra/utils/ui.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key, required this.img, required this.title, required this.highlight})
      : super(key: key);
  final String img;
  final String title;
  final String highlight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/on_boarding/$img.png",
          width: 256.3.w,
          height: 284.h,
          fit: BoxFit.fill,
        ),
        addVerticalSpace(52.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.overpass(
              fontWeight: FontWeight.w700, height: 1.33, fontSize: 24.0.sp,
          color: Color(0xFF090F47)
          ),
        ),
        addVerticalSpace(16.h),
        Text(
          highlight,
          textAlign: TextAlign.center,
          style: GoogleFonts.overpass(
            fontSize: 16.0,
            height: 1.5,
            color: Color(0xFF090F47).withOpacity(0.45),

            fontWeight: FontWeight.w300,),
        ),

      ],
    );
  }
}
