import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes/root.dart';
import 'theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NASA-TLX Workload Study',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: primaryColorSwatch,
          ).copyWith(
            secondary: secondaryColorSwatch,
          ),
          textTheme: GoogleFonts.notoSansTextTheme(
            Theme.of(context).textTheme,
          )),
      initialRoute: "/",
      routes: routes,
    );
  }
}
