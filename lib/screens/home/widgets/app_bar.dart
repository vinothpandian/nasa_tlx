import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Nasa TLX"),
      actions: [
        IconButton(
            onPressed: () async {
              const url = "https://github.com/vinothpandian/nasa_tlx";
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
            icon: Image.asset("assets/icons/github.png"))
      ],
    );
  }
}
