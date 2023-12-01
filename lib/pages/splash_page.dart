import 'package:flutter/material.dart';
import 'package:social_meme/pages/pages.dart';
import 'package:social_meme/widgets/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void splashing(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () async {
        Navigator.of(context).push(HomePage.route());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    splashing(context);

    return const Scaffold(
      body: Center(
        child: AppLogo(),
      ),
    );
  }
}
