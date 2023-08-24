import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/interface/user/components/user_icon.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.shadow,
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
              context.goNamed('login');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.background,
            ),
          )),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Column(
              children: [
                UserIcon(
                  screenHeight: constraints.maxHeight,
                  image: 'assets/images/github.png',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
