import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({
    super.key,
    required this.image,
    required this.screenHeight,
  });

  final String image;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    final double userIconHeight = screenHeight / 10;

    return Container(
      margin: const EdgeInsets.all(Paddings.kDefault),
      child: CircleAvatar(
        radius: userIconHeight,
        backgroundColor: Theme.of(context).colorScheme.shadow,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.background,
          backgroundImage: AssetImage(image),
          radius: userIconHeight - 3,
        ),
      ),
    );
  }
}
