import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('contact'),
        ),
        body: Center(
          child: Text('page contact',
            style : Theme.of(context).textTheme.headline3,
          ),
        )
    );
  }
}