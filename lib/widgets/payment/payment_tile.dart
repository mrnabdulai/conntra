import 'package:contra/constants/colors.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 15.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40.sp,
                height: 40.sp,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: primaryDeepBlueText.withOpacity(0.1), width: 1)),
              ),
              addHorizontalSpace(19.sp),
              Text(title,
                  style: GoogleFonts.poppins(
                    color: primaryDeepBlueText,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
          RadioTheme(data: RadioTheme.of(context).copyWith(
            fillColor:MaterialStateProperty.resolveWith((states){
              return primaryColor;
            })
          ), child: Radio(value: "", groupValue: "", onChanged: (value){}, )),
        ],
      ),
    );
  }
}
