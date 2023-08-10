import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallTextDescription extends StatelessWidget {
  final String text;
  final TextOverflow textOverflow;
  const SmallTextDescription({
    Key? key,
    required this.text,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 4,
      overflow: textOverflow,
      style: GoogleFonts.robotoCondensed(
        textStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
