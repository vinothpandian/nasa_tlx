import 'package:flutter/material.dart';
import 'package:nasa_tlx/widgets/icon_link.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Nasa TLX"),
      actions: [
        IconLink(
          url: "https://github.com/vinothpandian/nasa_tlx",
          icon: Image.asset("assets/icons/github.png"),
        )
      ],
    );
  }
}
