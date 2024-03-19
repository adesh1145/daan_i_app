import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double height;
  final int dashes;

  DashedDivider({
    required this.color,
    required this.thickness,
    required this.height,
    this.dashes = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: CustomPaint(
        painter: _DashedDividerPainter(color, thickness, dashes),
      ),
    );
  }
}

class _DashedDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final int dashes;

  _DashedDividerPainter(this.color, this.thickness, this.dashes);

  @override
  void paint(Canvas canvas, Size size) {
    final spaceBetween = size.width / (dashes * 2);

    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    for (var i = 0; i < dashes; i++) {
      final startX = i * 2 * spaceBetween;
      final endX = (i * 2 + 1) * spaceBetween;

      canvas.drawLine(Offset(startX, size.height / 2), Offset(endX, size.height / 2), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
