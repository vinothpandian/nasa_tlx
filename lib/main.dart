import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';
import 'routes/root.dart';
import 'theme/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAuth.instance.useAuthEmulator('192.168.0.232', 9099);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
