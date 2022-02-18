import 'package:flutter/material.dart';
import 'package:nasa_tlx/widgets/link.dart';

import 'widgets/app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Image.asset("assets/images/tlx_logo.png"),
            ),
            Text(
              "NASA-TLX",
              style: Theme.of(context).textTheme.displaySmall?.apply(color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              "Workload Assessment Tool",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const Link(
              text: "Know more",
              to: "/about",
              isRouterLink: true,
            ),
            const SizedBox(height: 16),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(children: [
                ElevatedButton(
                  child: const Text("Login or Register"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(48)),
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Expanded(child: Divider(indent: 8, endIndent: 8, color: Colors.black45)),
                    Text("or"),
                    Expanded(child: Divider(indent: 8, endIndent: 8, color: Colors.black45)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/icons/google.png"),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/icons/facebook.png"),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset("assets/icons/twitter.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ]),
            ),
            const Spacer(),
            const Link(
              text: "Privacy Policy",
              to: "https://www.termsfeed.com/live/6bc1c843-2745-4429-b227-ca24eb5de592",
            ),
          ],
        ),
      ),
    );
  }
}
