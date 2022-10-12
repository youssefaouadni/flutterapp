import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
class Gallerie extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('gallerie'),
        ),
        body: Center(
          child: Text('page gallerie',
            style : Theme.of(context).textTheme.headline3,
          ),
        )
    );
  }
}