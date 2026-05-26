import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import 'package:coffee_shop/src/core/constants/colors.dart';

class NavigationButtonData {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  NavigationButtonData({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}

class MyNavigationBar extends StatefulWidget {
  final void Function(int index)? onChanged;

  const MyNavigationBar({super.key, this.onChanged});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double buttonAppbarIconSize = 24.sp;

    List<NavigationButtonData> icons = [
      NavigationButtonData(
        icon: IconlyLight.home,
        activeIcon: IconlyBold.home,
        label: 'home',
      ),
      NavigationButtonData(
        icon: IconlyLight.heart,
        activeIcon: IconlyBold.heart,
        label: 'favorits',
      ),
      NavigationButtonData(
        icon: IconlyLight.bag,
        activeIcon: IconlyBold.bag,
        label: 'cart',
      ),
      NavigationButtonData(
        icon: IconlyLight.notification,
        activeIcon: IconlyBold.notification,
        label: 'notifications',
      ),
    ];

    return BottomNavigationBar(
      iconSize: 24.sp,
      currentIndex: currentIndex,
      onTap: (value) => setState(() {
        if (value != currentIndex) {
          currentIndex = value;
          if (widget.onChanged != null) widget.onChanged?.call(value);
        }
      }),
      selectedItemColor: MyColors.primaryColor,
      unselectedItemColor: MyColors.inActiveColor,
      showSelectedLabels: false,
      items: icons
          .map(
            (e) => BottomNavigationBarItem(
              icon: Icon(e.icon, size: buttonAppbarIconSize),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 6.h,
                children: [
                  Icon(e.activeIcon),
                  Container(
                    width: 10.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              label: e.label,
              tooltip: e.label,
            ),
          )
          .toList(),
    );
  }
}
