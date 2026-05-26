import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:coffee_shop/src/core/widgets/my_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRadioButtonsOutlined<T> extends StatefulWidget {
  const MyRadioButtonsOutlined({
    super.key,
    required this.values,
    required this.onSelectionChanged,
    required this.buttonChildBuilder,
    this.scrollDirection = Axis.horizontal,
    this.selectedIndex,
    this.buttonHeight,
  });

  final List<T> values;
  final Widget Function(BuildContext context, bool isSelected, int index)
  buttonChildBuilder;
  final int? selectedIndex;
  final Axis scrollDirection;
  final double? buttonHeight;
  final void Function(int index) onSelectionChanged;

  @override
  State<MyRadioButtonsOutlined> createState() => _MyRadioButtonsOutlinedState();
}

class _MyRadioButtonsOutlinedState extends State<MyRadioButtonsOutlined> {
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
            shrinkWrap: true,
            separatorBuilder: (context, index) =>
                widget.scrollDirection == Axis.horizontal
                ? SizedBox(width: 16.w)
                : SizedBox(height: 16.h),
            itemBuilder: (context, index) => selectedIndex == index
                ? MyOutlinedButton(
                    onTap: () => _onPressed(index),
                    color: Color(0xFFF9F2ED),
                    borderColor: MyColors.primaryColor,
                    child: widget.buttonChildBuilder(
                      context,
                      selectedIndex == index,
                      index,
                    ),
                  )
                : MyOutlinedButton(
                    onTap: () => _onPressed(index),
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
