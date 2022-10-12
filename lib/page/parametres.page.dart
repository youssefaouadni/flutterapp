import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
class Parametres extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('parametres'),
        ),
        body: Center(
          child: Text('page parametres',
            style : Theme.of(context).textTheme.headline3,
          ),
        )
    );
  }
}