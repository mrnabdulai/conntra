import 'package:contra/constants/colors.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uil.dart';
class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           IntrinsicHeight(
             child:    Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     Text("Sugar free gold",
                         style: GoogleFonts.poppins(
                           color: primaryDeepBlueText,
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w600,
                         )),
                     Text("bottle of 500 pellets",
                         style: GoogleFonts.poppins(
                           color: primaryGreyText,
                           fontSize: 13.sp,
                           fontWeight: FontWeight.w400,
                         )),
                     addVerticalSpace(20.h),
                     Text("GHC 500",
                         style: GoogleFonts.poppins(
                           color: primaryDeepBlueText,
                           fontSize: 18.sp,
                           fontWeight: FontWeight.w700,
                         )),
                   ],
                 ),
                 addHorizontalSpace(16.w),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Iconify(Uil.times_circle, size: 20.sp, color: Colors.black.withOpacity(0.25),),
                     Container(
                       width: 95.sp,
                       height: 32.sp,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(60.r),
                           color: Color(0xFFFFE8E5)
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           ClipOval(
                             child: Container(
                               width: 32.sp,
                               height: 32.sp,
                               color: Color(0xFFFFC7BF),
                               child: Center(
                                 child: Text("-", style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 20.sp,
                                     fontWeight: FontWeight.w600
                                 ),),
                               ),
                             ),
                           ),
                           Text("1", style: TextStyle(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w700),),
                           ClipOval(
                             child: Container (
                               width: 32.sp,
                               height: 32.sp,
                               color: Color(0xFFFF8B7B),
                               child: Center(
                                 child: Text("+", style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 20.sp,
                                     fontWeight: FontWeight.w600
                                 ),),
                               ),
                             ),
                           ),

                         ],
                       ),

                     )
                   ],
                 )
               ],
             ),
           ),
           addVerticalSpace(16.h),
           Divider(
             height: 1,
           ),
           addVerticalSpace(16.h),


         ],
      ),
    );
  }
}
