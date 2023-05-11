import 'package:flutter/material.dart';
class FadeTransitionExample extends StatefulWidget {
  Widget child;
  int duration;
  FadeTransitionExample({required this.child,required this.duration});


  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}
class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration:  Duration(seconds: widget.duration),
    vsync: this,
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child);
  }
}
