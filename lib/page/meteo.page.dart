import 'package:atelier3/page/home.page.dart';
import 'package:flutter/material.dart';
import '../menu/drawer.widget.dart';
class MeteoPage extends StatelessWidget {
  const MeteoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Meteo'),
      ),
      body: Center(
        child: Text(
          'Page Meteo', style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
