import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class universite extends StatelessWidget {
  const universite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MATEMATİK FORMÜLLERİ'),
        backgroundColor: Colors.green[900],
      ),

      body:  SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //Butonların konumunu belirler.
          children: <Widget>[
            SizedBox(
              width: 30,
              height: 30,
            ),
            Text(
              textAlign: TextAlign.left,
              "1) Doğrusal (Lineer) Enterpolasyon : ",
              style: TextStyle(
                //decoration: TextDecoration.underline,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'Noto_Sans_Math',
                fontSize: 21,
              ),
            ),

            Image(
              image: AssetImage("assets/resimler/uni_1.png"),
              width: 900,
              height: 200,
            ),

            Divider(
              color: Colors.green.shade900,
              height: 30,
            ),
            Text(
              textAlign: TextAlign.left,
              "2) Parabolik (Kuadratik) Enterpolasyon : ",
              style: TextStyle(
                //decoration: TextDecoration.underline,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'Noto_Sans_Math',
                fontSize: 21,
              ),
            ),

            Image(
              image: AssetImage("assets/resimler/uni_2.png"),
              width: 900,
              height: 200,
            ),

            Divider(
              color: Colors.green.shade900,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

