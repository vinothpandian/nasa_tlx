import 'package:nasa_tlx/screens/about.dart';

import '../screens/dashboard.dart';
import '../screens/home/home.dart';

var routes = {
  "/": (context) => const Home(),
  "/about": (context) => const About(),
  "/dashboard": (context) => const Dashboard(),
};
