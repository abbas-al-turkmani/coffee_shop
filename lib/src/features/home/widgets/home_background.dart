import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF313131), Color(0xFF111111)],
        ),
      ),
    );
  }
}
