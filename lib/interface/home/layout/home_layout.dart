import 'package:flutter/material.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const Center(
          child: Text('Hey'),
        );
      },
    );
  }
}
