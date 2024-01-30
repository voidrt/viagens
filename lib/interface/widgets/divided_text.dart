import 'package:flutter/material.dart';

class DividedText extends StatelessWidget {
  const DividedText({
    super.key,
    required this.constraints,
    required this.child,
    this.indent,
    this.endIndent,
  });

  final BoxConstraints constraints;
  final Widget child;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth,
      child: Row(
        children: [
          child,
          Expanded(
            child: Divider(
              indent: indent ?? 0,
              endIndent: endIndent ?? 0,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
