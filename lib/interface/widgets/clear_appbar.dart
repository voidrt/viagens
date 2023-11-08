import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: colors.shadow,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Profile',
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.background,
            ),
      ),
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: colors.shadow,
          height: 1.0,
        ),
      ),
    );
  }
}

class ClearAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClearAppBar({
    super.key,
    required this.appBar,
    this.title,
    this.widgets,
    this.leading,
  });

  final AppBar appBar;

  final List<Widget>? widgets;
  final String? title;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: Paddings.kDefault),
        child: leading,
      ),
      title: Text(
        title ?? '',
      ),
      actions: [
        ...widgets ?? [],
        const SizedBox(
          width: Paddings.kDefault,
        )
      ],
      elevation: 0,
      centerTitle: true,
      foregroundColor: Theme.of(context).colorScheme.background,
      backgroundColor: Theme.of(context).colorScheme.shadow,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Theme.of(context).colorScheme.shadow,
          height: 5,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
