import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({
    super.key,
    required this.initValue,
    this.maxValue = 99,
  });

  final int initValue;
  final int maxValue;

  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  late int value;

  @override
  void initState() {
    super.initState();

    value = widget.initValue;
  }

  void increment() => setState(() {
    if (value < widget.maxValue) value++;
  });
  void decrement() => setState(() {
    if (value > 0) value--;
  });

  @override
  Widget build(BuildContext context) {
    double iconSize = 16.sp;
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        color: value == 0 ? Colors.red : MyColors.primaryColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8.w,
        children: [
          IconButton(
            icon: Icon(Icons.remove, color: Colors.white, size: iconSize),
            onPressed: decrement,
            onLongPress: decrement,
            visualDensity: VisualDensity.compact,
          ),
          SizedBox(
            width: 22.w,
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.white, size: iconSize),
            onPressed: increment,
            onLongPress: increment,
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}
