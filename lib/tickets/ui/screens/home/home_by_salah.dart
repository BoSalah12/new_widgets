import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoviesTicketsApp extends StatefulWidget {
  const MoviesTicketsApp({super.key});

  @override
  State<MoviesTicketsApp> createState() => _MoviesTicketsAppState();
}

class _MoviesTicketsAppState extends State<MoviesTicketsApp> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarBrightness: Brightness.dark, statusBarColor: Colors.transparent),
        child: MovieHome());
  }
}

class MovieHome extends StatelessWidget {
  const MovieHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

        ],
      ),
    );
  }
}


class ImageSlider extends StatelessWidget {
  final int index;
  final String image;
  final double pageValue;

  const ImageSlider({
    super.key,
    required this.index,
    required this.image,
    required this.pageValue,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ImageClipper(progress: getProgress()),
      child: Image.asset(
        image,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  double getProgress() {
    if (index == pageValue.floor()) {
      return 1.0 - (pageValue - index);
    } else if (index < pageValue.floor()) {
      return 0.0;
    } else {
      return 1.0;
    }
  }
}

class ImageClipper extends CustomClipper<Path> {
  ImageClipper({required this.progress});

  final double progress;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(
      Rect.fromLTRB(
        size.width - (size.width * progress),
        0,
        size.width,
        size.height,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}