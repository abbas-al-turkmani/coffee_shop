import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class HorizontalSwitchButton extends StatefulWidget {
  const HorizontalSwitchButton({
    super.key,
    this.width,
    this.height = 50,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    required this.labels,
    this.initialIndex = 0,
    this.onChanged,
    this.activeColor = MyColors.primaryColor,
    this.inactiveColor = Colors.grey,
    this.duration = const Duration(milliseconds: 100),
  }) : assert(labels.length == 2),
       assert(initialIndex == 0 || initialIndex == 1);

  final List<String> labels; // must be length 2
  final ValueChanged<int>? onChanged;
  final int initialIndex;
  final double? width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;
  final BorderRadius borderRadius;
  final Duration duration;

  @override
  State<HorizontalSwitchButton> createState() => _HorizontalSwitchButtonState();
}

class _HorizontalSwitchButtonState extends State<HorizontalSwitchButton> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = widget.initialIndex;
  }

  void _setIndex(int index) {
    setState(() {
      currentIndex = index;
    });

    widget.onChanged?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = Color(0xFF242424);

    return LayoutBuilder(
      builder: (context, constraints) {
        double halfWidth = widget.width ?? constraints.maxWidth / 2;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: widget.width ?? constraints.maxWidth,
              height: widget.height,
              decoration: BoxDecoration(
                color: widget.inactiveColor,
                borderRadius: widget.borderRadius,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _setIndex(0),
                      borderRadius: BorderRadius.only(
                        topLeft: widget.borderRadius.topLeft,
                        bottomLeft: widget.borderRadius.bottomRight,
                      ),
                      child: Center(
                        child: Text(
                          widget.labels[0],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => _setIndex(1),
                      borderRadius: BorderRadius.only(
                        topRight: widget.borderRadius.topRight,
                        bottomRight: widget.borderRadius.bottomRight,
                      ),
                      child: Center(
                        child: Text(
                          widget.labels[1],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Moving Button
            AnimatedPositioned(
              left: currentIndex == 0 ? 0 : halfWidth,
              top: 0,
              duration: widget.duration,
              width: halfWidth,
              height: widget.height,
              child: Padding(
                padding: EdgeInsets.all(4.sp),
                child: Material(
                  elevation: 6,
                  color: widget.activeColor,
                  borderRadius: widget.borderRadius,
                  child: InkWell(
                    onTap: () => _setIndex(currentIndex == 0 ? 1 : 0),
                    child: Center(
                      child: Text(
                        widget.labels[currentIndex],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
