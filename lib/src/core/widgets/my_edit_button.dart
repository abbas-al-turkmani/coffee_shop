import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_outlined_button.dart';

class MyEditButton extends StatelessWidget {
  const MyEditButton({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MyOutlinedButton(
      borderRadius: 16.r,
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w, vertical: 6),
      child: Row(
        spacing: 4,
        children: [
          Icon(icon, size: 18.sp),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
