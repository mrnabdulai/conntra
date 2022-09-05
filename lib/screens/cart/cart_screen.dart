import 'package:contra/constants/colors.dart';
import 'package:contra/constants/sizing.dart';
import 'package:contra/utils/ui.dart';
import 'package:contra/widgets/cart/cart_item.dart';
import 'package:contra/widgets/gloabal/cc_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/uil.dart';

import '../payment/payment_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: primaryDeepBlueText),
        title: Text("Cart",
            style: GoogleFonts.poppins(
              color: primaryDeepBlueText,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: defaultHorizontalPadding.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 Items in Your Cart",
                  style: GoogleFonts.overpass(
                    color: primaryGreyText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: primaryGreyText,
                        ),
                        addHorizontalSpace(5.w),
                        Text(
                          "Add More",
                          style: GoogleFonts.overpass(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: primaryDeepBlueText),
                        )
                      ],
                    ))
              ],
            ),
            addVerticalSpace(24.h),
            CartItem(),
            CartItem(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              height: 48.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0.r),
                border: Border.all(
                    width: 1, color: Color(0xFFE0E0E0).withOpacity(0.6)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Iconify(Ri.coupon_line),
                      addHorizontalSpace(10.w),
                      Text("1 Coupon Applied",
                          style: GoogleFonts.poppins(
                            color: Color(0xFF27AE60),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  Iconify(
                    Uil.times_circle,
                    size: 20.sp,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
            ),
            addVerticalSpace(24.h),
            Text("Payment Summary",
                style: GoogleFonts.poppins(
                  color: primaryDeepBlueText,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                )),
            addVerticalSpace(16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order Total",
                    style: GoogleFonts.poppins(
                      color: primaryGreyText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text("GHC 128",
                    style: GoogleFonts.poppins(
                      color: primaryDeepBlueText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            addVerticalSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Items Discount",
                    style: GoogleFonts.poppins(
                      color: primaryGreyText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text("-GHC 92",
                    style: GoogleFonts.poppins(
                      color: primaryDeepBlueText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            addVerticalSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Coupon Discount",
                    style: GoogleFonts.poppins(
                      color: primaryGreyText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text("-GHC 15",
                    style: GoogleFonts.poppins(
                      color: primaryDeepBlueText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            addVerticalSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping",
                    style: GoogleFonts.poppins(
                      color: primaryGreyText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text("Free",
                    style: GoogleFonts.poppins(
                      color: primaryDeepBlueText,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
            addVerticalSpace(15.h),
            Divider(
              height: 1,
            ),
            addVerticalSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",
                    style: GoogleFonts.poppins(
                      color: primaryGreyText,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    )),
                Text("GHC 200",
                    style: GoogleFonts.poppins(
                      color: primaryDeepBlueText,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            addVerticalSpace(30.h),
            CCElevatedButton(
                text: "Place Order @ GHC 200",
                onPress: () {
                  Navigator.pushNamed(context, PaymentScreen.routeName);
                }),
            addVerticalSpace(30.h),
          ],
        ),
      ),
    );
  }
}
