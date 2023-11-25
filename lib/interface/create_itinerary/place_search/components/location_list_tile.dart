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
    return Column(
      children: [
        ListTile(
          onTap: press,
          horizontalTitleGap: 0,
          leading: const Icon(LineIcons.city),
          title: Text(
            location,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
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
