import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  const Link({
    Key? key,
    required this.text,
    required this.to,
    this.isRouterLink = true,
  }) : super(key: key);

  final String text;
  final bool isRouterLink;
  final String to;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium?.apply(
              color: Colors.blueAccent.shade400,
              decoration: TextDecoration.underline,
            ),
      ),
      onTap: () async {
        if (isRouterLink) {
          Navigator.pushNamed(context, to);
          return;
        }

        if (await canLaunch(to)) {
          await launch(to);
        }
      },
    );
  }
}
