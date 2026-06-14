import 'package:coffee_shop/src/core/bloc/app_cubit.bloc.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLocationWidget extends StatelessWidget {
  const HomeLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = context.read();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 60.h),
        Text(
          Strings.sLocation(),
          style: TextStyle(
            color: Color(0xFFA2A2A2),
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              appCubit.state.userInfo!.address.address,
              style: TextStyle(
                color: Color(0xFFD8D8D8),
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 24.sp),
          ],
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
