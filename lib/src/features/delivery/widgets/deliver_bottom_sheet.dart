import 'package:coffee_shop/src/core/bloc/app_cubit.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';

import 'delivery_man_card.dart';

class DeliveryBottomSheet extends StatefulWidget {
  const DeliveryBottomSheet({super.key});

  @override
  State<DeliveryBottomSheet> createState() => _DeliveryBottomSheetState();
}

class _DeliveryBottomSheetState extends State<DeliveryBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      showDragHandle: true,
      animationController: _animationController,
      dragHandleColor: MyColors.inActiveColor,
      backgroundColor: Colors.white,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '10 minutes left',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: Color(0xFF242424),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Delivery to ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Color(0xFF242424),
                  ),
                ),
                Text(
                  context.read<AppCubit>().state.userInfo!.address.addressLine,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: Color(0xFF242424),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: StepProgressIndicator(
                totalSteps: 4,
                currentStep: 3,
                size: 4,
                selectedColor: Color(0xFF36C07E),
                unselectedColor: MyColors.borderColor,
                roundedEdges: Radius.circular(10),
                customStep: (p0, p1, p2) {
                  return Container(
                    decoration: BoxDecoration(
                      color: p1,
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),

            // Delivered your order card
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.borderColor),
                borderRadius: BorderRadius.circular(12.r),
              ),
              padding: EdgeInsetsDirectional.only(
                start: 12.w,
                top: 8,
                end: 12.w,
                bottom: 8,
              ),
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                spacing: 16.w,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.borderColor),
                      borderRadius: BorderRadius.circular(12.r),
                    ),

                    padding: EdgeInsetsDirectional.all(14),
                    child: Transform.flip(
                      flipX: true,
                      child: Assets.icons.bike.image(
                        width: 27,
                        fit: BoxFit.fitWidth,
                        color: MyColors.primaryColor,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          Strings.sDeliveredYourOrder(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Color(0xFF242424),
                          ),
                        ),
                        Text(
                          Strings.sWeWillDeliverYourGoodsToYouInTheShortesPossibleTime(),
                          style: TextStyle(
                            color: MyColors.inActiveColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 12.sp,
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14),

            // Delevery man Card
            DeliveryManCard(),

            SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
