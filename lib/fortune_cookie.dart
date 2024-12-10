import 'package:flutter/material.dart';
import 'package:fortune_cookie/screens/home_screen.dart';

class FortuneCookie extends StatelessWidget {
  const FortuneCookie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
