import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Paddings.small / 2,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.onBackground,
          filled: true,
          hintText: hintText,
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
