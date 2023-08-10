import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        scrolledUnderElevation: 20,
        centerTitle: true,
        title: Text(
          "Review Vietnamese Foods",
          style: GoogleFonts.lobster(
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: const HomeScreenBody(),
    );
  }
}
