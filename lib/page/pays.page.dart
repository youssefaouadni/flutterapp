import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
class Pays extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('pays'),
        ),
        body: Center(
          child: Text('page pays',
            style : Theme.of(context).textTheme.headline3,
          ),
        )
    );
  }
}