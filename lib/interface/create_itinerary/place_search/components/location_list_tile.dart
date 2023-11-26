import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class LocationListTile extends StatelessWidget {
  const LocationListTile({
    Key? key,
    required this.location,
    required this.press,
  }) : super(key: key);

  final String location;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Paddings.kDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    colors.primary,
                    colors.secondary,
                  ],
                ).createShader(bounds),
                child: Icon(
                  LineIcons.locationArrow,
                  size: 20,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Paddings.kDefault,
                    vertical: Paddings.medium,
                  ),
                  child: Text(
                    location,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: Paddings.kDefault,
          endIndent: Paddings.big + 5,
        )
      ],
    );
  }
}
