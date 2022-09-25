import 'package:contra/constants/colors.dart';
import 'package:contra/constants/sizing.dart';
import 'package:contra/screens/cart/cart_screen.dart';
import 'package:contra/utils/ui.dart';
import 'package:contra/widgets/gloabal/cc_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
   ProductScreen({Key? key}) : super(key: key);
  static const routeName = '/productScreen';

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int itemsInCart = 0;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconTheme.of(context).copyWith(color: primaryDeepBlueText),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconTheme.of(context).copyWith(color: primaryDeepBlueText),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_outlined,
                  color: primaryDeepBlueText),
              onPressed: () {},
            ),
          Stack(
            children: [
              IconButton(
                icon:
                Icon(Icons.shopping_bag_outlined, color: primaryDeepBlueText),
                onPressed: () {},
              ),
             if(itemsInCart > 0) Positioned(child: ClipOval(child: Container(color: Colors.red, width: 15.sp, height: 15.sp, child: Center(
                child: Text("$itemsInCart",style: TextStyle(color: Colors.white,fontSize: 10.sp, fontWeight: FontWeight.w700),),
              ),)),right: 10, top: 5,)
            ],
          )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: defaultHorizontalPadding.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sugar Free Gold Low Calories",
                  style: GoogleFonts.overpass(
                      color: primaryDeepBlueText,
                      fontWeight: FontWeight.w700,
                      fontSize: 22.sp),
                ),
                addVerticalSpace(4.h),
                Text(
                  "Sugar Free Gold Low Calories",
                  style: GoogleFonts.overpass(
                      color: primaryDeepBlueText.withOpacity(0.45),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                addVerticalSpace(16.h),
                //prodcut image
                Container(
                  width: double.maxFinite,
                  height: 140.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8F8F8),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  //TODO:add product image
                  child: null,
                ),
                //TODO: ADD Carousel Feature
                addVerticalSpace(25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GHC 56",
                          style: GoogleFonts.overpass(
                              color: primaryDeepBlueText,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        addVerticalSpace(4.h),
                        Text(
                          "Etiam mollis ",
                          style: GoogleFonts.overpass(
                              color: primaryDeepBlueText.withOpacity(0.45),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          itemsInCart++;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add_box_outlined,
                            color: primaryDeepBlueText,
                          ),
                          addHorizontalSpace(10.w),
                          Text(
                            "Add to cart",
                            style: GoogleFonts.overpass(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: secondaryDeepBlueText),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                addVerticalSpace(18.h),
                Divider(
                  height: 1,
                ),

                addVerticalSpace(10.h),
                Text(
                  "Product Details",
                  style: GoogleFonts.overpass(
                      color: primaryDeepBlueText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
                ),
                addVerticalSpace(8.h),
                Text(
                  "Interdum et malesuada fames ac ante ipsum primis \nin faucibus. Morbi ut nisi odio. Nulla facilisi. \nUunc risus massa, gravida id egestas a, \npretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, \naccumsan nisi sit.",
                  style: GoogleFonts.overpass(
                      color: primaryDeepBlueText.withOpacity(0.45),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                ),
                addVerticalSpace(24.h),
                Text(
                  "Ratings And Reviews",
                  style: GoogleFonts.overpass(
                      color: primaryDeepBlueText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
                ),
                //  Single rating widget
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Eric Hoofman",
                          style: GoogleFonts.overpass(
                              color: primaryDeepBlueText,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                        Text(
                          "05- oct 2020",
                          style: GoogleFonts.overpass(
                              color: primaryGreyText,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    addVerticalSpace(5.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Color(0xFFFFC000)),
                        Text(
                          "4.2",
                          style: GoogleFonts.overpass(
                              color: primaryGreyText,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp),
                        ),
                      ],
                    ),
                    addVerticalSpace(5.h),
                    Text(
                      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas ",
                      style: GoogleFonts.overpass(
                          color: primaryGreyText,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp),
                    ),
                    addVerticalSpace(30.h),
                    CCElevatedButton(text: "GO TO CART", onPress: () {
                      Navigator.pushNamed(context, CartScreen.routeName);
                    }),
                    addVerticalSpace(50.h)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
