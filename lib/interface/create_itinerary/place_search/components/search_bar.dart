import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class PlaceSearchBar extends StatelessWidget {
  const PlaceSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Paddings.kDefault,
        bottom: Paddings.small,
        left: Paddings.big,
        right: Paddings.big,
      ),
      child: TextField(
        decoration: getSearchBarDecoration(context),
      ),
    );
  }

  getSearchBarDecoration(BuildContext context) => InputDecoration(
        fillColor: Theme.of(context).colorScheme.onBackground,
        hintText: 'Pesquise uma cidade',
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: LightThemeColors.lightGrey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(
            color: LightThemeColors.lightGrey,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: Paddings.small,
          horizontal: Paddings.big,
        ),
      );
}
