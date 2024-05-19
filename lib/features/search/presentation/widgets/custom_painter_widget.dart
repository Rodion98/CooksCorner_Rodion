import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  final double indicatorHeight;
  final double indicatorWidth; // New parameter for width
  final Color indicatorColor;

  const CustomTabIndicator({
    required this.indicatorHeight,
    required this.indicatorWidth, // New parameter for width
    required this.indicatorColor,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      indicatorHeight: indicatorHeight,
      indicatorWidth: indicatorWidth, // Pass width to the painter
      indicatorColor: indicatorColor,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final double indicatorHeight;
  final double indicatorWidth; // New parameter for width
  final Color indicatorColor;

  _CustomPainter({
    required this.indicatorHeight,
    required this.indicatorWidth, // New parameter for width
    required this.indicatorColor,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = Offset(
          offset.dx + (configuration.size!.width - indicatorWidth) / 2, // Center the indicator horizontally
          (configuration.size!.height - indicatorHeight) + offset.dy,
        ) &
        Size(indicatorWidth, indicatorHeight); // Use the provided width

    final Paint paint = Paint();
    paint.color = indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(indicatorHeight / 2)),
      paint,
    );
  }
}
