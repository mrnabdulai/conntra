import 'package:contra/constants/colors.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightDealCard extends StatelessWidget {
  const HighlightDealCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, top: 31.h),
      height: 140,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 24.w),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/boards/pills_board.png",
              ),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Save extra on\nevery order",
            style: GoogleFonts.overpass(
              height: 1.05,
              color: Color(0xFF1A2D5E),
              fontSize: 20.0.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          addVerticalSpace(11.h),
          Text(
            "Etiam mollis metus\nnon faucibus . ",
            style: GoogleFonts.overpass(
              color: primaryDeepBlueText.withOpacity(0.65),
              fontSize: 12.0.sp,
              height: 1.33,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
