import 'package:flutter/material.dart';

/// A vertical two-option toggle that looks like a regular button
/// and slides vertically to switch options.
class VerticalToggleButton extends StatefulWidget {
  final List<String> labels; // must be length 2
  final ValueChanged<int>? onChanged;
  final int initialIndex;
  final double width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Duration duration;

  const VerticalToggleButton({
    super.key,
    required this.labels,
    this.onChanged,
    this.initialIndex = 0,
    this.width = 140,
    this.height = 56,
    this.activeColor = const Color(0xFF6F4E37),
    this.inactiveColor = Colors.black54,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.duration = const Duration(milliseconds: 220),
  }) : assert(labels.length == 2),
       assert(initialIndex == 0 || initialIndex == 1);

  @override
  State<VerticalToggleButton> createState() => _VerticalToggleButtonState();
}

class _VerticalToggleButtonState extends State<VerticalToggleButton>
    with SingleTickerProviderStateMixin {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex;
  }

  void _setIndex(int i) {
    if (_index == i) return;
    setState(() => _index = i);
    widget.onChanged?.call(i);
  }

  @override
  Widget build(BuildContext context) {
    final double halfHeight = widget.height / 2;

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // background (two stacked options)
          Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: widget.borderRadius,
            ),
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => _setIndex(0),
                    borderRadius: BorderRadius.only(
                      topLeft: widget.borderRadius.topLeft,
                      topRight: widget.borderRadius.topRight,
                    ),
                    child: Center(
                      child: Text(
                        widget.labels[0],
                        style: TextStyle(
                          color: _index == 0
                              ? widget.activeColor.computeLuminance() > 0.5
                                    ? Colors.black
                                    : Colors.white
                              : widget.inactiveColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => _setIndex(1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: widget.borderRadius.bottomLeft,
                      bottomRight: widget.borderRadius.bottomRight,
                    ),
                    child: Center(
                      child: Text(
                        widget.labels[1],
                        style: TextStyle(
                          color: _index == 1
                              ? widget.activeColor.computeLuminance() > 0.5
                                    ? Colors.black
                                    : Colors.white
                              : widget.inactiveColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // moving button
          AnimatedPositioned(
            duration: widget.duration,
            curve: Curves.easeInOut,
            top: _index == 0 ? 0 : halfHeight,
            left: 0,
            right: 0,
            height: halfHeight,
            child: Material(
              elevation: 6,
              color: widget.activeColor,
              borderRadius: widget.borderRadius,
              child: InkWell(
                onTap: () => _setIndex(_index == 0 ? 1 : 0),
                borderRadius: widget.borderRadius,
                child: Center(
                  child: Text(
                    widget.labels[_index],
                    style: TextStyle(
                      color: widget.activeColor.computeLuminance() > 0.5
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
