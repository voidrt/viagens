import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AccountAuthTile extends StatelessWidget {
  final String imagePath;
  final dynamic signInFunction;

  const AccountAuthTile({
    super.key,
    required this.imagePath,
    required this.signInFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: signInFunction,
      child: Container(
        padding: const EdgeInsets.all(Paddings.big),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
