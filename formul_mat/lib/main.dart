import 'package:flutter/material.dart';
import 'package:formul_mat/formul_10.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/services.dart';
import 'package:formul_mat/ortaokul.dart';
import 'package:formul_mat/lise.dart';
import 'package:formul_mat/universite.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Yatay dönmesini engelleme
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        title: Text('MATEMATİK FORMÜLLERİ',
        style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.green.shade900,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/resimler/resim5.jpeg"),
            fit: BoxFit.cover),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Butonların konumunu belirler.
          children: <Widget>[

            //ClipOval(   //Resmi yuvarlak yapmaya yarıyor.
              //clipper: MyClipper(),
              //child: Image.asset('assets/resimler/resim2.jpg'),


            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ortaokul(),
                  ));
              },
              style: TextButton.styleFrom(
                  shadowColor: Colors.black,elevation: 10,
                  minimumSize: Size(380, 65),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      //Butonu oval yapıyor.
                      borderRadius: BorderRadius.all(Radius.elliptical(
                          20, 20))), side: BorderSide(color: Colors.green.shade900)
                //Butonun boyutunu belirler.
                  ),
              child: Text(
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.green.shade900),
                'ORTAOKUL',
              ),
            ),
            SizedBox(
              //Buton arası boşluk sağlar.
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const lise()),
                );
              },
              style: TextButton.styleFrom(
                  shadowColor: Colors.black,elevation: 10,
                  minimumSize: Size(380, 65),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(20, 20))),
                  side: BorderSide(color: Colors.green.shade900)
              ),
              child: Text(
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green.shade900),
                'LİSE',
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const universite ()),
                );
              },
              style: TextButton.styleFrom(
                  shadowColor: Colors.black,elevation: 10,
                  minimumSize: Size(380, 65),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(20, 20))),
                          side: BorderSide(color: Colors.green.shade900)),
              child: Text(
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.green.shade900),
                'ÜNİVERSİTE',
              ),
            )
          ],
        ),
      ),

      //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//@override
//class MyClipper extends CustomClipper<Rect> { //Resmi yuvarlak yapmaya yarar.
  //Rect getClip(Size size) {
    //return Rect.fromLTWH(left, top, width, height)
    //return Rect.fromLTWH(0, 50, 400, 200);}
  //bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    //throw UnimplementedError();}}
