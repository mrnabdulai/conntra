import 'package:contra/constants/colors.dart';
import 'package:contra/constants/sizing.dart';
import 'package:contra/screens/home/bottom_nav_screen.dart';
import 'package:contra/utils/ui.dart';
import 'package:contra/widgets/gloabal/cc_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentConfirmScreen extends StatelessWidget {
  const PaymentConfirmScreen({Key? key}) : super(key: key);
  static const routeName = '/paymentConfirmScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultHorizontalPadding.h),
        child: Column(
          children: [
            addVerticalSpace(142.h),
            Image.asset("assets/images/illustrations/order_success.png"),
            addVerticalSpace(55.h),
            Text("Thank You",
                style: GoogleFonts.poppins(
                  color: primaryDeepBlueText,
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.w700,
                )),
            addVerticalSpace(16.h),
            Text(
                "Your Order will be delivered with invoice\n #9ds69hs. You can track the delivery in the\n order section.",
                style: GoogleFonts.poppins(
                  color: primaryGreyText,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                )),
            addVerticalSpace(212.h),
            CCElevatedButton(
                text: "Continue Order",
                onPress: () {
                  Navigator.pushNamed(context, BottomNavScreen.routeName);
                })
          ],
        ),
      ),
    );
  }
}
