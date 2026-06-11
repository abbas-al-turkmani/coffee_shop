import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/bloc/app_cubit.bloc.dart';
import 'package:coffee_shop/src/core/constants/strings.dart';
import 'package:coffee_shop/src/core/widgets/my_buttom_sheet.dart';
import 'package:coffee_shop/src/core/widgets/my_button.dart';
import 'package:coffee_shop/src/core/widgets/my_text_field.dart';
import 'package:coffee_shop/src/features/home/pages/home_page.dart';
import 'package:coffee_shop/src/features/onbording/modules/user_address.module.dart';
import 'package:coffee_shop/src/features/onbording/modules/user_info.module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = context.read();

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Assets.images.a6.image(
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(24.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                          Colors.black,
                        ],
                      ),
                    ),

                    child: Column(
                      children: [
                        Text(
                          Strings.sWelcomPageFirstSentence(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          Strings.sWelcomPageSecondSentence(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA2A2A2), // AppColor.subtitleText,
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Expanded(
                              child: StatefulBuilder(
                                builder: (BuildContext context, setState) {
                                  TextEditingController userNameController =
                                      TextEditingController();
                                  TextEditingController addressController =
                                      TextEditingController();
                                  return MyButton(
                                    child: Text(
                                      Strings.sGetStarted(),
                                      style: TextStyle(color: Colors.white),
                                    ),

                                    onPressed: () => showMyButtomSheet(
                                      context,
                                      height: 275.h,
                                      Column(
                                        children: [
                                          Text('Let us know more about you'),
                                          SizedBox(height: 24.h),
                                          MyTextField(
                                            controller: userNameController,
                                            hintText: 'Please Enter your name:',
                                            onFieldSubmitted: (value) {},
                                            onChanged: (value) {},
                                          ),
                                          SizedBox(height: 12.h),
                                          MyTextField(
                                            controller: addressController,
                                            hintText:
                                                'Please Enter your address:',
                                            onFieldSubmitted: (value) {},
                                            onChanged: (value) {},
                                          ),
                                          SizedBox(height: 12),
                                          SizedBox(
                                            width: 125.w,
                                            child: MyButton(
                                              child: Text(
                                                Strings.sContinue(),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () {
                                                appCubit.saveUserInfo(
                                                  UserInfoModule(
                                                    userName:
                                                        userNameController.text,
                                                    address:
                                                        UserAddress(address: addressController.text, addressLine: 'addressLine'),
                                                  ),
                                                );
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
