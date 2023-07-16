import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formul_mat/main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Yatay dönmesini engelleme
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const formul_5());
}

class formul_5 extends StatelessWidget {
  const formul_5({super.key});

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
          backgroundColor: Colors.green.shade900,
          title: Text("MATEMATİK FORMÜLLERİ",
            style: TextStyle(color: Colors.white),),
          centerTitle: true,
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
                  "1) Uzunluk Ölçme Birimleri : ",
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto_Sans_Math',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Image(
                  image: AssetImage("assets/resimler/bes_1.png"),
                  width: 900,
                  height: 400,
                ),

                SizedBox(
                  width: 25,
                  height: 25,
                ),

                Divider(
                  color: Colors.green.shade900,
                  height: 90,
                ),
                Text(
                  textAlign: TextAlign.left,
                  "2) Üçgenin Çevresi : ",
                  style: TextStyle(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Noto_Sans_Math',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Image(
                  image: AssetImage("assets/resimler/bes_2.png"),
                  width: 900,
                  height: 300,
                ),
              ]),
        ));
  }
}