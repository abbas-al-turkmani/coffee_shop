import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_button_2.dart';

class MyRadioButtonSet<T> extends StatefulWidget {
  const MyRadioButtonSet({
    super.key,
    required this.values,
    required this.onSelectionChanged,
    required this.buttonChildBuilder,
    this.scrollDirection = Axis.horizontal,
    this.buttonHeight,
    this.selectedIndex,
  });

  final List<T> values;
  final Widget Function(BuildContext context, bool isSelected, int index)
  buttonChildBuilder;
  final int? selectedIndex;
  final Axis scrollDirection;
  final double? buttonHeight;
  final void Function(int index) onSelectionChanged;

  @override
  State<MyRadioButtonSet> createState() => _MyRadioButtonSetState<T>();
}

class _MyRadioButtonSetState<T> extends State<MyRadioButtonSet> {
  late int? selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;

    super.initState();
  }

  void _onPressed(int index) {
    if (selectedIndex != index) {
      setState(() => selectedIndex = index);
      widget.onSelectionChanged(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    ToggleButtonsThemeData themeData = ToggleButtonsTheme.of(context);

    return ToggleButtonsTheme(
      data: themeData,
      child: SizedBox(
        height: widget.buttonHeight ?? 40,
        child: Center(
          child: ListView.separated(
            scrollDirection: widget.scrollDirection,
            itemCount: widget.values.length,
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) =>
                widget.scrollDirection == Axis.horizontal
                ? SizedBox(width: 16.w)
                : SizedBox(height: 16.h),
            itemBuilder: (context, index) => MyButton2(
              onPressed: () => _onPressed(index),
              backgroundColor: (selectedIndex == index)
                  ? null
                  : Color(0xFFEDEDED),
              child: widget.buttonChildBuilder(
                context,
                selectedIndex == index,
                index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
