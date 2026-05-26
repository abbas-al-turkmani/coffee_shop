import 'package:coffee_shop/gen/fonts.gen.dart';
import 'package:coffee_shop/src/core/bloc/app_cubit.bloc.dart';
import 'package:coffee_shop/src/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/bloc/app.state.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(
        // sharedPreferences: getItInstance()
      )..initState(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              ScreenUtil.init(context);
              return MaterialApp(
                title: 'Coffee Shop App',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: FontFamily.sora,
                  scaffoldBackgroundColor: Color(0xFFF9F9F9),
                ),
                home:
                    //  state.userInfo == null ? WelcomePage() :
                    HomePage(),
              );
            },
          );
        },
      ),
    );
  }
}
