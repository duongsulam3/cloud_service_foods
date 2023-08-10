import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final TextOverflow textOverflow;
  const BigText({
    Key? key,
    required this.text,
    this.size = 36,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: GoogleFonts.lobster(
        textStyle: TextStyle(
          fontSize: size,
        ),
      ),
    );
  }
}
