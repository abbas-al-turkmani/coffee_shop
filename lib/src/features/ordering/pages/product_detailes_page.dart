import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:coffee_shop/src/features/home/model/product_module.dart';

import '../widgets/name_and_rating_widget.dart';
import '../widgets/product_description_widget.dart';
import '../widgets/product_detailes_footer.dart';
import '../widgets/product_detailes_header.dart';
import '../widgets/product_size_selector.dart';

class ProductDetailesPage extends StatelessWidget {
  const ProductDetailesPage({super.key, required this.module});

  final ProductModule module;

  @override
  Widget build(BuildContext context) {
    List<String> sizes = ['S', 'M', 'L'];

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            alignment: AlignmentGeometry.bottomCenter,
            children: [
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Page header
                      ProductDetailesHeader(),

                      // Page Content
                      SizedBox(
                        height: 520.h,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 16,
                            children: [
                              Image(
                                image: module.image.image,
                                width: double.infinity,
                                height: 202,
                                fit: BoxFit.contain,
                              ),
                              // Name, rating and icons.
                              NameAndRatingWidget(module: module),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Divider(color: Color(0xFFE3E3E3)),
                              ),

                              // Description
                              ProductDescriptionWidget(module: module),

                              // Size
                              ProductSizeSelector(sizes: sizes),
                              SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Page Footer
              ProductDetailesFooter(module: module),
            ],
          ),
        ),
      ),
    );
  }
}
