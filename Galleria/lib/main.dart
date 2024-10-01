import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:galleria/second_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ui.Image> images = [];

  @override
  void initState() {
    super.initState();
    loadImages();
    Timer(Duration(seconds: 10),(){Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage()));});
  }

  Future<void> loadImages() async {

    images = await Future.wait([
      loadImage('assets/images/business.png'),
      loadImage('assets/images/career.png'),
      loadImage('assets/images/family.png'),
      loadImage('assets/images/health.png'),
      loadImage('assets/images/marriage.png'),
    ]);
    setState(() {});
  }

  Future<ui.Image> loadImage(String path) async {
    final Completer<ui.Image> completer = Completer();
    final imageProvider = AssetImage(path);

    imageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener((imageInfo, _) {
        completer.complete(imageInfo.image);
      }),
    );

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        toolbarHeight: 0,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black87,
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomPaint(
              painter: RightSemicirclePainter(images: images),
              size: Size(double.infinity, 400),
            ),
          ],
        ),
      ),
    );
  }
}

class RightSemicirclePainter extends CustomPainter {
  final List<ui.Image> images;
  final List<String> labels = ["Business", "Career", "Family", "Health", "Marriage"];

  RightSemicirclePainter({required this.images});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(30, size.height / 2);
    final radius = 70.0;

    final Rect gradientRect = Rect.fromLTRB(0, 0, size.width, size.height);

    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFF7495E8), Color(0xFF0C359E)],
    );

    Paint paint = Paint()
      ..shader = gradient.createShader(gradientRect)
      ..style = PaintingStyle.fill;

    // Draw the semicircle with the vertical gradient
    Rect rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawArc(rect, 0, 2 * pi, true, paint); // Full circle

    final radius1 = 200.0;
    Paint strokePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(center, radius1, strokePaint);

    final radius2 = 120.0;
    final center2 = Offset(0, size.height / 2 - 20);
    Paint strokePaint2 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(center2, radius2, strokePaint2);

    final radius3 = 270.0;
    final center3 = Offset(0, size.height / 2 + 40);
    Paint strokePaint3 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(center3, radius3, strokePaint3);

    final radius4 = 310.0;
    final center4 = Offset(0, size.height / 2 + 5);
    Paint strokePaint4 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawCircle(center4, radius4, strokePaint4);

    double startAngle = -pi / 2;
    double endAngle = pi / 2;
    double angleStep = (endAngle - startAngle) / (images.length - 1);

    for (int i = 0; i < images.length; i++) {
      double angle = startAngle + i * angleStep;

      double x = center.dx + radius1 * cos(angle);
      double y = center.dy + radius1 * sin(angle);
      double imageSize = 50.0;
      Rect imageRect = Rect.fromCenter(
        center: Offset(x, y),
        width: imageSize,
        height: imageSize,
      );
      canvas.drawImageRect(
        images[i],
        Rect.fromLTWH(0, 0, images[i].width.toDouble(), images[i].height.toDouble()),
        imageRect,
        Paint(),
      );


      drawText(canvas, labels[i], Offset(x + imageSize / 2 + 10, y - 10));
    }
  }

  void drawText(Canvas canvas, String text, Offset position) {
    final textStyle = TextStyle(
      color: Color(0xFF7495E8),
      fontSize: 16,
    );
    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: double.infinity);

    textPainter.paint(canvas, position);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


