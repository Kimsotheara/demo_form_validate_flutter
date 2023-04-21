import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kLoginTitleStyle(Size size) => GoogleFonts.ubuntu(
  fontSize: size.height * 0.060,
  fontWeight: FontWeight.bold,
);

TextStyle kLoginSubtitleStyle(Size size) => GoogleFonts.ubuntu(
  fontSize: size.height * 0.030,
);

TextStyle kLoginTermsAndPrivacyStyle(Size size) => GoogleFonts.ubuntu(
    fontSize: 15, color: const Color.fromARGB(255, 143, 141, 141), height: 1.5);

TextStyle kHaveAnAccountStyle(Size size) => GoogleFonts.ubuntu(
  fontSize: size.height * 0.022,
  color: Colors.deepPurpleAccent,
);

TextStyle kLoginOrSignUpTextStyle(
    Size size,
    ) =>
    GoogleFonts.ubuntu(
      fontSize: size.height * 0.022,
      fontWeight: FontWeight.w500,
      color: Colors.deepPurpleAccent,
    );

TextStyle kTextFormFieldStyle() => const TextStyle(
  color: Colors.deepPurpleAccent,
);
