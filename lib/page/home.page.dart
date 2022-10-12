import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../menu/drawer.widget.dart';
class homePage extends StatelessWidget {
late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("home page"),),
      body:  Center(
          child: Wrap(
            children: [
              InkWell(
                child: Ink.image(
                  height: 180,
                  width: 180,
                  image: AssetImage('image/meteo.png',),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/meteo');
                },
              ),
              InkWell(
                child: Ink.image(
                  height: 180,
                    width: 180,
                    image: AssetImage('image/gallerie.png'),),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/gallerie');
                },
              ),
              InkWell(
                child: Ink.image(
                    height: 180,
                    width: 180,
                    image: AssetImage('image/pays.png')),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/pays');
                },
              ),
              InkWell(
                child: Ink.image(
                    height: 180,
                    width: 180,
                    image: AssetImage('image/contact.png')),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contact');
                },
              ),
              InkWell(
                child: Ink.image(
                    height: 180,
                    width: 180,
                    image: AssetImage('image/parametres.png')),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/parametres');
                },
              ),
              InkWell(
                child: Ink.image(
                    height: 180,
                    width: 180,
                    image: AssetImage('image/deconnexion.png')),
                onTap: (){
                _Deconnexion(context);
                },
              ),
            ],
          ),
      ),
    );
  }

  Future<void> _Deconnexion(context) async{
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connect", false);
    Navigator.of(context).pushNamedAndRemoveUntil('/authentification', (Route<dynamic> route) => false);

  }
}

