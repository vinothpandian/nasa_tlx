import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconLink extends StatelessWidget {
  const IconLink({
    Key? key,
    required this.url,
    required this.icon,
  }) : super(key: key);

  final String url;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      icon: icon,
    );
  }
}
