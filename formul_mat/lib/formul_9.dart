import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formul_mat/main.dart';
import 'package:formul_mat/lise.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Yatay dönmesini engelleme
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const formul_9());
}

class formul_9 extends StatelessWidget {
  const formul_9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('MATEMATİK FORMÜLLERİ'),
          backgroundColor: Colors.green[900],
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center, //Butonların konumunu belirler.
              children: <Widget>[
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Text(
                  textAlign: TextAlign.left,
                  "1) Mantık Tablosu : ",
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto_Sans_Math',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 5,
                  height: 5,
                ),
                Image(
                  image: AssetImage("assets/resimler/dokuz_1.png"),
                  width: 900,
                  height: 300,
                ),
                Divider(
                  color: Colors.green.shade900,
                  height: 30,
                ),
                Image(
                  image: AssetImage("assets/resimler/dokuz_2.png"),
                  width: 900,
                  height: 300,
                ),
                Divider(
                  color: Colors.green.shade900,
                  height: 30,
                ),
              ]),
        ));
  }
}