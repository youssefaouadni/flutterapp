import 'package:atelier3/page/inscription.page.dart';
import 'package:flutter/material.dart';
import 'package:atelier3/page/authentification.page.dart';
import 'package:atelier3/page/home.page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../page/meteo.page.dart';
import '../page/gallerie.dart';
import '../page/pays.page.dart';
import '../page/contact.dart';
import '../page/parametres.page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // MyApp({super.key});
  final routes = {
    '/home' : (context) => homePage(),
    '/inscription': (context) => inscriptionPage(),
    '/authentification': (context) => authentificationPage(),
    '/contact':(context)=> Contact(),
    '/pays':(context)=> Pays(),
    '/parametres':(context)=> Parametres(),
    '/meteo':(context)=> MeteoPage(),
    '/gallerie':(context) => Gallerie()


  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
        (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
        var x = prefs.data;
        if (prefs.hasData){
        bool conn = x?.getBool('connecte') ?? false;
           if (conn) {
             return MaterialApp(
              debugShowCheckedModeBanner: false,
              home : homePage(),
              routes: routes,
              );
           }
        }return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: authentificationPage(),
        routes: routes,
        );
  });
  }
  }



