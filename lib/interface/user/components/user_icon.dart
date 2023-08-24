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
    final double userIconHeight = screenHeight / 13;

    return Container(
      margin: const EdgeInsets.all(Paddings.kDefault),
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundImage: AssetImage(image),
        radius: userIconHeight,
      ),
    );
  }
}
