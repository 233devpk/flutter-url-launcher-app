// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatefulWidget {
  const Link({Key? key}) : super(key: key);

  @override
  State<Link> createState() => _LinkState();
}

_launchURLBrowser() async {
  const url = 'https://www.youtube.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _LinkState extends State<Link> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('  No ads  '),
        ),
        // ignore: prefer_const_constructors
        body: //Padding(
            // padding: const EdgeInsets.all(8.0),
            // ignore: prefer_const_constructors
            ButtonTheme(
          minWidth: 400.0,
          height: 200,
          child: const Center(
              child: RaisedButton(
            color: Colors.red,
            onPressed: _launchURLBrowser,
          )),
        ));
  }
}
