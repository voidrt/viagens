import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        leading: IconButton(
          icon: const Icon(LineIcons.userCircleAlt),
          color: colors.shadow,
          onPressed: () {
            context.goNamed('user-profile');
          },
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Logado como ${FirebaseAuth.instance.currentUser!.email}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
