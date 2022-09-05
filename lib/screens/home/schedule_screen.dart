import 'package:contra/constants/colors.dart';
import 'package:contra/constants/sizing.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: defaultHorizontalPadding.w,
            right: defaultHorizontalPadding.w,
            top: 52.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              padding: EdgeInsets.only(right: 24.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(56.r),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Color(0xFFF8F6F6),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56.r),
                      borderSide: BorderSide.none),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            addVerticalSpace(36.h),
            Text(
              "Ben",
              style: GoogleFonts.overpass(
                  color: primaryDeepBlueText,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp),
            ),
            addVerticalSpace(36.h),
            MaterialButton(
              onPressed: () {},
              child: Container(
                width: 320.w,
                height: 180.h,
                decoration: BoxDecoration(
                  color: Color(0xFFF6D6C8),
                  // borderRadius: BorderRadius.circular(radius)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
