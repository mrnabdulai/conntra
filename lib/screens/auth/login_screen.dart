import 'package:contra/constants/colors.dart';
import 'package:contra/screens/home/bottom_nav_screen.dart';
import 'package:contra/utils/ui.dart';
import 'package:contra/widgets/gloabal/cc_elevated_button.dart';
import 'package:contra/widgets/gloabal/cc_underlined_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: primaryDeepBlueText),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(10.h),
                Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.overpass(
                      fontWeight: FontWeight.w700, height: 1.33, fontSize: 24.0.sp,
                      color: primaryDeepBlueText
                  ),
                ),
                addVerticalSpace(24.h),
              CCUnderlinedInput(hintText: "Email", icon: Icons.mail_outline,),
                addVerticalSpace(16.h),
                CCUnderlinedInput(hintText: "Password", icon: Icons.lock_outline, trailing: TextButton(
                  onPressed: () {  },
                  child: Text("Forgot Password?", style: GoogleFonts.overpass(
                      fontWeight: FontWeight.w400, height: 1.33, fontSize: 10.0.sp,
                      color: primaryGreyText
                  ),),
                ),),
                addVerticalSpace(24.h),
                CCElevatedButton(text: "LOGIN", onPress: (){
                  Navigator.of(context).pushNamedAndRemoveUntil(BottomNavScreen.routeName, (route) => false);
                },),


              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.h),
              child: TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Don't have an account? Sign Up", style: GoogleFonts.overpass(
                  fontWeight: FontWeight.w400, height: 1.33, fontSize: 14.0.sp,
                  color: primaryGreyText
              ),)),
            )
          ],
        ),
      ),
    );
  }
}
