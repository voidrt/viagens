import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
    this._controller, {
    super.key,
    required this.hintText,
    required this.obscureText,
  });

  final TextEditingController _controller;
  final String hintText;
  final bool obscureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Paddings.small / 2,
      ),
      child: TextField(
        controller: widget._controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(Paddings.kDefault + 5),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: LightThemeColors.lightGrey,
            ),
          ),
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: LightThemeColors.black.withOpacity(0.5),
              ),
        ),
      ),
    );
  }
}
