import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formul_mat/main.dart';
import 'package:formul_mat/ortaokul.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Yatay dönmesini engelleme
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const formul_6());
}

class formul_6 extends StatelessWidget {
  const formul_6({super.key});

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

                  "1) Aritmetik Ortalama : ",

                  style: TextStyle(
                    //decoration: TextDecoration.underline,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto_Sans_Math',
                    fontSize: 25,

                  ),
                ),
                Image(
                  image: AssetImage("assets/resimler/alti_1.png"),
                  width: 900,
                  height: 250,
                ),

                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Divider(
                  color: Colors.green.shade900,
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.left,
                  "2) Açıklık : ",
                  style: TextStyle(
                    //decoration: TextDecoration.underline,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto_Sans_Math',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 1,
                  height: 1,
                ),
                Image(
                  image: AssetImage("assets/resimler/alti_2.png"),
                  width: 900,
                  height: 200,
                ),
              ]),
        ));
  }
}