import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/widgets/my_edit_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/features/onbording/modules/user_address.module.dart';
import 'package:iconly/iconly.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key, required this.userAddress});

  final UserAddress userAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          Strings.sDeliveryAddress(),
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Text(
              userAddress.address,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
            ),
            Text(
              userAddress.addressLine,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: MyColors.inActiveColor,
              ),
            ),
          ],
        ),

        // Edit Address and Edit note Buttons
        Row(
          spacing: 8.w,
          children: [
            MyEditButton(
              icon: IconlyLight.edit_square,
              text: Strings.sEditAddress(),
            ),
            MyEditButton(icon: IconlyLight.document, text: Strings.sAddNote()),
          ],
        ),
      ],
    );
  }
}
