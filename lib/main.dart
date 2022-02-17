import 'package:flutter/material.dart';

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
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: primaryColorSwatch).copyWith(secondary: secondaryColorSwatch)),
      initialRoute: "/",
      routes: routes,
    );
  }
}
