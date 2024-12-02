import 'package:flutter/material.dart';

import 'login_desktop_screen.dart';
import 'login_mobile_screen.dart';
import 'login_tablet_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background container
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/jpg/bg-img.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Login content
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (size.width >= 1100)
                      const LoginDesktopScreen()
                    else if (size.width >= 650 && size.width < 1100)
                      const LoginTabletScreen()
                    else
                      const LoginMobileScreen(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
