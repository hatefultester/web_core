import 'package:flutter/material.dart';

enum CustomOpacityAnimationType {
  fullTransition,
  appearTransition;

  Duration duration() {
    switch (this) {
      case CustomOpacityAnimationType.fullTransition:
        return const Duration(milliseconds: 900);

      case CustomOpacityAnimationType.appearTransition:
        return const Duration(milliseconds: 500);
    }
  }

  double startOpacity() {
    switch (this) {
      case CustomOpacityAnimationType.fullTransition:
        return 0.0;
      case CustomOpacityAnimationType.appearTransition:
        return 0.5;
    }
  }

  double endOpacity() {
    switch (this) {
      case CustomOpacityAnimationType.fullTransition:
      case CustomOpacityAnimationType.appearTransition:
        return 1;
    }
  }
}

class CustomOpacityAnimationWrapper extends StatefulWidget {
  final Widget child;
  final CustomOpacityAnimationType type;

  Duration get duration => type.duration();
  double get startOpacity => type.startOpacity();
  double get endOpacity => type.endOpacity();

  const CustomOpacityAnimationWrapper({
    Key? key,
    required this.child,
    this.type = CustomOpacityAnimationType.fullTransition,
  }) :super(key: key);

  @override
  CustomOpacityAnimationWrapperState createState() =>
      CustomOpacityAnimationWrapperState();
}

class CustomOpacityAnimationWrapperState extends State<CustomOpacityAnimationWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _opacityAnimation = Tween<double>(
      begin: widget.startOpacity,
      end: widget.endOpacity,
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: widget.child,
        );
      },
    );
  }
}
