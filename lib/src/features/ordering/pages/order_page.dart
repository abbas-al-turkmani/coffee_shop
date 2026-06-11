import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/features/onbording/modules/user_address.module.dart';
import 'package:coffee_shop/src/features/ordering/widgets/order_detailes_header.dart';
import 'package:coffee_shop/src/core/widgets/horizontal_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../module/order_item.module.dart';
import '../widgets/delivery_address_widget.dart';
import '../widgets/discount_card.dart';
import '../widgets/order_detailes_footer.dart';
import '../widgets/payment_summary_section.dart';
import '../widgets/product_card_horizontal.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key, required this.orderItemModule});

  final OrderItemModule orderItemModule;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Address and Product
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Column(
              spacing: 16,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      OrderDetailesHeader(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        spacing: 24,
                        children: [
                          HorizontalSwitchButton(
                            labels: [Strings.sDeliver(), Strings.sPickup()],
                            inactiveColor: Color(0xFFEDEDED),
                          ),

                          Column(
                            spacing: 16,
                            children: [
                              DeliveryAddressSection(
                                userAddress: UserAddress(
                                  address: 'address',
                                  addressLine: 'addressLine',
                                ),
                              ),

                              Padding(
                                // Horizontal Padding
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Divider(
                                  color: Color(0xFFE3E3E3),
                                  height: 0,
                                ),
                              ),

                              // Product Card
                              ProductCardHorizontal(module: orderItemModule),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xFFF9F2ED), thickness: 4, height: 0),

                // Price and Discount
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24,
                    children: [DiscountCard(), PaymentSummarySection()],
                  ),
                ),
              ],
            ),

            OrderDetailesFooter(),
          ],
        ),
      ),
    );
  }
}
