import 'package:flutter/material.dart';
import 'package:particles/particles_painter.dart';

class ParticlesWidget extends StatefulWidget {
  final Widget child;

  const ParticlesWidget({Key? key, required this.child}) : super(key: key);
  @override
  _ParticlesWidgetState createState() => _ParticlesWidgetState();
}

class _ParticlesWidgetState extends State<ParticlesWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  List<Offset> dots = [];
  List<List> lines = [];
  double dotsCount = 250;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.addListener(() {
      setState(() {
        // for (var i = 0; i < dotsCount; i++) {
        //   dots.add(Offset(animation.value * i, animation.value * i));
        // }
      });
    });

    final future = controller.repeat(period: Duration(seconds: 2));
    future.then((value) {
      dots = [];
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          ParticlesPainter(color: Colors.white, circles: dots, lines: lines),
      child: widget.child,
    );
  }
}
