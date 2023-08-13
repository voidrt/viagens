import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AccountAuthTile extends StatelessWidget {
  final String imageFile;
  final dynamic loginFunc;

  const AccountAuthTile({
    super.key,
    required this.imageFile,
    required this.loginFunc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loginFunc,
      child: Container(
        padding: const EdgeInsets.all(Paddings.big),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.onBackground,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/$imageFile',
            alignment: Alignment.topCenter,
            scale: 11,
          ),
        ),
      ),
    );
  }
}
