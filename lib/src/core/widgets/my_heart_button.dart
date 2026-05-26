import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MyHeartButton extends StatefulWidget {
  const MyHeartButton({super.key, this.isSelected = false, this.onTap});

  final bool isSelected;
  final void Function()? onTap;

  @override
  State<MyHeartButton> createState() => _MyHeartButtonState();
}

class _MyHeartButtonState extends State<MyHeartButton> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();

    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSelected = !_isSelected;

          if (widget.onTap != null) widget.onTap?.call();
        });
      },
      icon: _isSelected
          ? Icon(IconlyBold.heart, color: Colors.red)
          : Icon(IconlyLight.heart),
    );
  }
}
