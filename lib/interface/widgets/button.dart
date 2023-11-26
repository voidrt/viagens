import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';

class BoldButton extends StatelessWidget {
  const BoldButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.border,
    this.backgroundColor,
    this.margin,
    this.padding,
    this.roundness = 8.0,
  });

  final Function onTap;
  final String text;
  final double roundness;
  final BorderRadius border;
  final Color? backgroundColor;
  final double? margin;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(padding ?? 20),
        margin: EdgeInsets.only(
          top: margin ?? 0,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).colorScheme.shadow,
          borderRadius: border,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: LightThemeColors.background,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
