import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AI Droor',
            style: TextStyle(
              color: Colors.tealAccent.shade700,
            ),
          ),
        ),
        body: Container(
          color: Colors.tealAccent.shade700,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                      height: 30,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: false,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 30,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 30,
                          verticalOffset1: 0,
                          verticalOffset2: 0,
                          horizontalOffset1: 0,
                          horizontalOffset2: 0)),
                  YearSelector(),
                  SizedBox(
                    height: 30,
                    child: CurvedLineWidgetWithSlopes(
                      drawSlopes: true,
                      slopeStartHeight1: 0,
                      slopeEndHeight1: 60.w,
                      slopeStartHeight2: 0,
                      slopeEndHeight2: 60.w,
                      verticalOffset1: -66,
                      verticalOffset2: -66,
                      horizontalOffset1: 130,
                      horizontalOffset2: -130,
                    ),
                  ),
                  YearSelector(),
                  SizedBox(
                      height: 30,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 53.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 53.w,
                          verticalOffset1: -60,
                          verticalOffset2: -60,
                          horizontalOffset1: 80,
                          horizontalOffset2: -80)),
                  const Column(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Test",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 30,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 65.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 65.w,
                          verticalOffset1: -74,
                          verticalOffset2: -74,
                          horizontalOffset1: 78,
                          horizontalOffset2: -78)),
                  const Column(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Test",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 50,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 37.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 37.w,
                          verticalOffset1: -32,
                          verticalOffset2: -32,
                          horizontalOffset1: 88,
                          horizontalOffset2: -88)),
                  SizedBox(
                      height: 50,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 38.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 38.w,
                          verticalOffset1: -33,
                          verticalOffset2: -33,
                          horizontalOffset1: 98,
                          horizontalOffset2: -98)),
                  SizedBox(
                      height: 50,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 36.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 36.w,
                          verticalOffset1: -29,
                          verticalOffset2: -29,
                          horizontalOffset1: 108,
                          horizontalOffset2: -108)),
                  SizedBox(
                      height: 50,
                      child: CurvedLineWidgetWithSlopes(
                          drawSlopes: true,
                          slopeStartHeight1: 0,
                          slopeEndHeight1: 37.w,
                          slopeStartHeight2: 0,
                          slopeEndHeight2: 37.w,
                          verticalOffset1: -29,
                          verticalOffset2: -29,
                          horizontalOffset1: 118,
                          horizontalOffset2: -118)),
                  SizedBox(
                      height: 50,
                      child: CurvedLineWidgetWithSlopes(drawSlopes: false)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedLineWidgetWithSlopes extends StatelessWidget {
  final bool drawSlopes;
  final double slopeStartHeight1;
  final double slopeEndHeight1;
  final double slopeStartHeight2;
  final double slopeEndHeight2;
  final double verticalOffset1;
  final double verticalOffset2;
  final double horizontalOffset1;
  final double horizontalOffset2;

  CurvedLineWidgetWithSlopes({
    required this.drawSlopes,
    this.slopeStartHeight1 = 0,
    this.slopeEndHeight1 = 0,
    this.slopeStartHeight2 = 0,
    this.slopeEndHeight2 = 0,
    this.verticalOffset1 = 0,
    this.verticalOffset2 = 0,
    this.horizontalOffset1 = 0,
    this.horizontalOffset2 = 0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 20), // Adjust height as needed
      painter: CurvedLinePainter(
        drawSlopes: drawSlopes,
        slopeStartHeight1: slopeStartHeight1,
        slopeEndHeight1: slopeEndHeight1,
        slopeStartHeight2: slopeStartHeight2,
        slopeEndHeight2: slopeEndHeight2,
        verticalOffset1: verticalOffset1,
        verticalOffset2: verticalOffset2,
        horizontalOffset1: horizontalOffset1,
        horizontalOffset2: horizontalOffset2,
      ),
    );
  }
}

class CurvedLinePainter extends CustomPainter {
  final bool drawSlopes;
  final double slopeStartHeight1; // Start height of the left slope
  final double slopeEndHeight1; // End height of the left slope
  final double slopeStartHeight2; // Start height of the right slope
  final double slopeEndHeight2; // End height of the right slope
  final double verticalOffset1; // Vertical offset for the left slope
  final double verticalOffset2; // Vertical offset for the right slope
  final double horizontalOffset1; // Horizontal offset for the left slope
  final double horizontalOffset2; // Horizontal offset for the right slope

  CurvedLinePainter({
    required this.drawSlopes,
    this.slopeStartHeight1 = 0,
    this.slopeEndHeight1 = 0,
    this.slopeStartHeight2 = 0,
    this.slopeEndHeight2 = 0,
    this.verticalOffset1 = 0,
    this.verticalOffset2 = 0,
    this.horizontalOffset1 = 0,
    this.horizontalOffset2 = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    // Draw the main curved line
    final path = Path()
      ..moveTo(0, size.height) // Start point of the curve
      ..quadraticBezierTo(size.width / 2, size.height / 100, size.width - 0,
          size.height); // Curve to the end point

    canvas.drawPath(path, paint);

    if (drawSlopes) {
      // Draw the left slope
      final leftSlopePaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3;

      final leftSlopePath = Path()
        ..moveTo(30 + horizontalOffset1,
            size.height - slopeStartHeight1 - verticalOffset1)
        ..lineTo(20 + horizontalOffset1,
            size.height - slopeEndHeight1 - verticalOffset1);

      canvas.drawPath(leftSlopePath, leftSlopePaint);

      // final leftSlopePaint2 = Paint()
      //   ..color = Colors.white
      //   ..style = PaintingStyle.stroke
      //   ..strokeWidth = 3;

      // final leftSlopePath2 = Path()
      //   ..moveTo(30 + horizontalOffset1,
      //       size.height - slopeStartHeight1 - verticalOffset1)
      //   ..lineTo(20 + horizontalOffset1,
      //       size.height - slopeEndHeight1 - verticalOffset1);

      // canvas.drawPath(leftSlopePath2, leftSlopePaint2);
      // Draw the right slope
      final rightSlopePaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3;

      final rightSlopePath = Path()
        ..moveTo(size.width - 30 + horizontalOffset2,
            size.height - slopeStartHeight2 - verticalOffset2)
        ..lineTo(size.width - 20 + horizontalOffset2,
            size.height - slopeEndHeight2 - verticalOffset2);

      canvas.drawPath(rightSlopePath, rightSlopePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class YearSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_left, color: Colors.white),
          onPressed: () {
            // Handle left arrow press
          },
        ),
        const Text(
          '1442', // Replace with actual start year
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        const Text(
          'January', // Replace with actual selected month
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Text(
          '2021', // Replace with actual current year
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_right, color: Colors.white),
          onPressed: () {
            // Handle right arrow press
          },
        ),
      ],
    );
  }
}
