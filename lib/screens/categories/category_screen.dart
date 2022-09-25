import 'package:contra/constants/colors.dart';
import 'package:contra/constants/sizing.dart';
import 'package:contra/screens/products/product_screen.dart';
import 'package:contra/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/wi.dart';
import 'package:contra/widgets/products/product_card.dart';
import '../../widgets/products/highlight_deal_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.category}) : super(key: key);
  static const String routeName = "/category";
  final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: primaryDeepBlueText),
        title: Text(category,
            style: GoogleFonts.poppins(
              color: primaryDeepBlueText,
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: defaultHorizontalPadding.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(18.h),
              // HighlightDealCard(),
              addVerticalSpace(18.h),
              Text("Dental Products",
                  style: GoogleFonts.poppins(
                    color: primaryDeepBlueText,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  )),
              addVerticalSpace(16.h),
              _buildCategorySubCategories(context),
              addVerticalSpace(16.h),
              Text(
                "All Products",
                style: GoogleFonts.poppins(
                  color: primaryDeepBlueText,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              addVerticalSpace(24.h),
              _buildAllProductsRow(),
              addVerticalSpace(10.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySubCategories(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildSubCategoryCard(context),
          _buildSubCategoryCard(context),
          _buildSubCategoryCard(context),
          _buildSubCategoryCard(context),
        ],
      ),
    );
  }

  Widget _buildSubCategoryCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17.w),
      width: 110.w,
      height: 162.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xFFF5F7FA),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context,ProductScreen.routeName);
        },
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 99.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.r),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
                child: Image.asset(
                  "assets/images/drug_images/pills_bottle.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            addVerticalSpace(14.h),
            Text("Sugar\nSubstitute",
                style: GoogleFonts.poppins(
                  color: primaryDeepBlueText,
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildAllProductsRow() {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 250.h,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 20.w,
        childAspectRatio: 2
      ),
      children: [
        ProductCard(),
        ProductCard(),
        ProductCard(),
        ProductCard()
      ],
    );
  }
}
