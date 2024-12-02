import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1,
          sigmaY: 1,
        ),
        child: Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          height: 250,
          width: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(0.3),
            border: Border.all(
              width: 2,
              color: Colors.white30,
            ),
          ),
        /*  child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/png/chat-3d-img.png",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Leave a comment in my linkedin post!\n🧑‍💻✨",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),*/
        ),
      ),
    );
  }
}
