import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_widgets/coffe/ui/screens/home/home.dart';

// inspired by https://dribbble.com/shots/8245907-Coffee-House-App-Design
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.bigShouldersTextTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const CoffeHomePage(),
    );
  }
}
