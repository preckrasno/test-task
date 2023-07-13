import 'package:flutter/material.dart';

class AppViewStyles {
  static final ButtonStyle choiceButton = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(0),
    backgroundColor: const Color(0xFFFFEFEF),
    foregroundColor: Colors.black,
    fixedSize: const Size(346, 131),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 0,
  );

  static final ButtonStyle nextButton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    fixedSize: const Size(189, 53),
    padding: const EdgeInsets.all(0),
    foregroundColor: Colors.white,
    elevation: 0,
  );
}
