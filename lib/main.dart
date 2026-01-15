import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // <-- ต้องมี

import 'views/home_ui.dart';

void main() {
  runApp(const FlutterAwesomeApp());
}

// ============================================================

class FlutterAwesomeApp extends StatefulWidget {
  const FlutterAwesomeApp({super.key});

  @override
  State<FlutterAwesomeApp> createState() => _FlutterAwesomeAppState();
}

class _FlutterAwesomeAppState extends State<FlutterAwesomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
