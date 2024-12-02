import 'package:flutter/material.dart';
import 'package:new_widgets/final-widgets/glass_effect_widget.dart';

import 'glass-effect/tst.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.jpeg')),
            ),
            child: const GlassEffectWidget(),
          ),

          GlassMorphism(
              blur: 50,
              color: Colors.black,
              opacity: 0.2,
              borderRadius: BorderRadius.circular(12),
              child: Container(height: 130, width: 200,
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/logo.jpeg')),
    ),),)
        ],
      ),
    );
  }
}
