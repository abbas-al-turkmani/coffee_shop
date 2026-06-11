import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_button_2.dart';
import 'package:coffee_shop/src/features/delivery/pages/delivery_detailes_page.dart';

class OrderDetailesFooter extends StatelessWidget {
  const OrderDetailesFooter({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 16.r;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
        boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: .1)],
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 16.w,
                children: [
                  Icon(
                    IconlyLight.wallet,
                    size: 20.sp,
                    color: MyColors.primaryColor,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        Strings.sCashWallet(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF242424),
                        ),
                      ),

                      Text(
                        '\$ 5.53',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: MyColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Icon(
                IconlyLight.arrow_down_2,
                size: 28.sp,
                color: Color(0xFF2A2A2A),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: MyButton2(
                  child: Text(Strings.sOrder()),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryDetailesPage(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
