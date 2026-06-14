import 'package:coffee_shop/src/core/constants/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = MyColors.primaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.w;

    double x1 = size.width * .62,
        x2 = size.width * .59,
        x3 = size.width * .58,
        x4 = size.width * .31,
        x5 = size.width * .26,
        x6 = size.width * .24,
        y1 = size.height * .42,
        y2 = size.height * .16,
        y3 = size.height * .17,
        y4 = size.height * .18,
        y5 = size.height * .201,
        y6 = size.height * .233;

    Path path = Path()..moveTo(x1, y1);

    path.lineTo(x1, y2);
    path.lineTo(x2, y2);
    path.lineTo(x3, y3);
    path.lineTo(x4, y4);
    path.lineTo(x4, y5);
    path.lineTo(x5, y5);
    path.lineTo(x5, y6);
    path.lineTo(x6, y6);

    // Go back
    path.lineTo(x5, y6);
    path.lineTo(x5, y5);
    path.lineTo(x4, y5);
    path.lineTo(x4, y4);
    path.lineTo(x3, y3);
    path.lineTo(x2, y2);
    path.lineTo(x1, y2);
    path.lineTo(x1, y1);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
