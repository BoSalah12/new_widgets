import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_text_field.dart';

class LoginDesktopScreen extends StatelessWidget {
  const LoginDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
        ),
        child: Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(0.3),
            border: Border.all(
              width: 2,
              color: Colors.white30,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              left: 80,
              right: 80,
              top: 50,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// sign up title
                Text(
                  "Sign up",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                /// email text
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF343434),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                /// email text filed
                const CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: "user@gmail.com",
                ),
                const SizedBox(
                  height: 12,
                ),

                /// password text
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF343434),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                /// password text filed
                const CustomTextField(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "Password",
                  isPasswordField: true,
                ),
                const SizedBox(
                  height: 12,
                ),

                /// confirm password text
                Text(
                  "Confirm Password",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF343434),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                /// confirm password text field
                const CustomTextField(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "Confirm Password",
                  isPasswordField: true,
                ),
                const SizedBox(
                  height: 38,
                ),

                /// sign up btn
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF8A6EDD),
                    ),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Already have an account?",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF787878),
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
