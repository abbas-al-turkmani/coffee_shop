import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_button_2.dart';
import 'package:coffee_shop/src/features/home/model/product_module.dart';
import 'package:coffee_shop/src/features/ordering/module/order_item.module.dart';
import 'package:coffee_shop/src/features/ordering/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailesFooter extends StatelessWidget {
  const ProductDetailesFooter({super.key, required this.module});

  final ProductModule module;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: .1)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 24.w,
        children: [
          //Price
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  Strings.sPrice(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xFF909090),
                  ),
                ),
                Text(
                  '\$ ${module.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: MyColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),

          //Buy now Button
          Expanded(
            child: MyButton2(
              child: Text(Strings.sBuyNow()),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(
                    orderItemModule: OrderItemModule(product: module, count: 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
