import 'package:coffee_shop/src/core/widgets/my_icon_button.dart';
import 'package:coffee_shop/src/features/home/model/product_module.dart';
import 'package:coffee_shop/src/features/ordering/pages/product_detailes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.module});

  final ProductModule module;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailesPage(module: module),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Container(
                width: 140.h,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Stack(
                  alignment: AlignmentGeometry.topRight,
                  children: [
                    module.image,

                    // Rating Section
                    Container(
                      padding: EdgeInsets.all(8.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28.r),
                        ),
                        gradient: LinearGradient(
                          colors: [Color(0x4D313131), Color(0x4D111111)],
                        ),
                      ),
                      child: Row(
                        spacing: 4.w,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                            size: 18.sp,
                          ),
                          Text(
                            module.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Info section
              Text(
                module.name,
                style: TextStyle(
                  color: Color(0xFF242424),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                module.type,
                style: TextStyle(
                  color: Color(0xFFA2A2A2),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${module.price.toString()}',
                    style: TextStyle(
                      color: Color(0xFF050505),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  MyIconButton(
                    size: 32.sp,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
