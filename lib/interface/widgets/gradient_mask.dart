import 'package:flutter/material.dart';

class GradientMask extends StatelessWidget {
  const GradientMask({
    super.key,
    required this.child,
    this.begin,
    this.end,
  });

  final Widget child;
  final Alignment? begin;
  final Alignment? end;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => LinearGradient(
        begin: begin ?? Alignment.topCenter,
        end: end ?? Alignment.bottomCenter,
        colors: [
          colors.primary,
          colors.secondary,
        ],
      ).createShader(bounds),
      child: child,
    );
  }
}
