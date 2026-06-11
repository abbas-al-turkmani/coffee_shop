import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSummarySection extends StatelessWidget {
  const PaymentSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          Strings.sPaymentSummary(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: Color(0xFF242424),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.sPrice(),
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xFF313131),
              ),
            ),
            Text(
              '\$ 12.00',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Color(0xFF242424),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.sDeliveryFee(),
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Color(0xFF313131),
              ),
            ),
            Row(
              spacing: 8.w,
              children: [
                Text(
                  '\$ 2.0',
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 14.sp,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  '\$ 1.0',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: Color(0xFF242424),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
