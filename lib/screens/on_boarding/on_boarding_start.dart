import 'package:contra/screens/auth/signup_screen.dart';
import 'package:contra/screens/on_boarding/on_boarding_screen.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:contra/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingStart extends StatefulWidget {
  static const String routeName = "/onBoardingStart";

  const OnBoardingStart({Key? key}) : super(key: key);

  @override
  State<OnBoardingStart> createState() => _OnBoardingStartState();
}

class _OnBoardingStartState extends State<OnBoardingStart> {
  int currentPage = 0;

  final PageController _pageController =
      PageController(initialPage: 0, keepPage: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            addVerticalSpace(97.h),
            Expanded(
              child: PageView(
                onPageChanged: (newPageNumber) {
                  setState(() {
                    currentPage = newPageNumber;
                  });
                },
                controller: _pageController,
                children: const [
                  OnBoardingScreen(
                    img: "onb_img1",
                    title: "View and buy\nMedicine online",
                    highlight:
                        "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
                  ),
                  OnBoardingScreen(
                    img: "onb_img2",
                    title: "Online medical &\nHealthcare",
                    highlight:
                        "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
                  ),
                  OnBoardingScreen(
                    img: "onb_img3",
                    title: "Get Delivery on time",
                    highlight:
                        "Etiam mollis metus non purus\nfaucibus sollicitudin. Pellentesque\nsagittis mi. Integer.",
                  ),
//
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: GoogleFonts.overpass(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF090F47).withOpacity(0.45)),
                          )),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children:
                            List.generate(3, (index) => getIndicator(index)),
                      ),
                      TextButton(
                        onPressed: () {
                          if (currentPage != 2) {
                            _pageController.animateToPage(currentPage + 1,
                                duration: Duration(
                                  milliseconds: 300,
                                ),
                                curve: Curves.linear);


                          }
                          else{
                            Navigator.pushNamedAndRemoveUntil(context, SignUpScreen.routeName, (route) => false);
                          }
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.overpass(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(64.h)
              ],
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 4,
      height: 4,
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (currentPage == pageNo ? primaryColor : Colors.grey)),
    );
  }
}
