import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class CustomScaffoldWithAppBar extends StatelessWidget {
  const CustomScaffoldWithAppBar({
    super.key,
    required this.body,
    this.appBarLeading,
    this.actions,
    this.title,
  });

  final Widget body;
  final Widget? appBarLeading;
  final List<Widget>? actions;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: ClearAppBar(
          appBar: AppBar(),
          leading: appBarLeading ??
              IconButton(
                icon: const Icon(LineIcons.arrowLeft),
                onPressed: () => context.pop(),
              ),
          widgets: actions,
          title: title,
        ),
        body: body,
      ),
    );
  }
}
