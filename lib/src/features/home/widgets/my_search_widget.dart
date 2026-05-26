import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: Row(
        spacing: 16.w,
        children: [
          Expanded(
            flex: 4,
            child: TextField(
              controller: TextEditingController(),
              cursorColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                fillColor: Color(0xFF2A2A2A),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24.sp,
                  color: Colors.white,
                ),
                hint: Text(
                  Strings.sSearchCoffee(),
                  style: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),

          Expanded(
            child: MyIconButton(
              child: Icon(IconlyLight.filter, size: 30.sp, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
