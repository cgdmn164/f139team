import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'formul_5.dart';
import 'package:formul_mat/formul_6.dart';
import 'package:formul_mat/formul_7.dart';
import 'formul_8.dart';
import 'main.dart';

class ortaokul extends StatelessWidget {
  const ortaokul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('MATEMATİK FORMÜLLERİ'),
        backgroundColor: Colors.green[900],
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/resimler/resim5.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //Butonların konumunu belirler.
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_5()));

                  },
                  style: TextButton.styleFrom(
                      minimumSize: Size(175, 175),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(

                        //Butonu oval yapıyor.
                          borderRadius: BorderRadius.all(Radius.elliptical(
                              20, 20))) //Butonun boyutunu belirler.
                  ),

                  child: Text(

                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green[900]),
                    '5.Sınıf',

                  ),
                ),
                SizedBox(width: 30),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_6()));

                  },

                  style: TextButton.styleFrom(
                      minimumSize: Size(175, 175),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        //Butonu oval yapıyor.
                          borderRadius: BorderRadius.all(Radius.elliptical(
                              20, 20))) //Butonun boyutunu belirler.

                  ),

                  child: Text(

                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green[900]),
                    '6.Sınıf',

                  ),
                ),

              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_7()));

                  },
                  style: TextButton.styleFrom(
                      minimumSize: Size(175, 175),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(

                        //Butonu oval yapıyor.
                          borderRadius: BorderRadius.all(Radius.elliptical(
                              20, 20))) //Butonun boyutunu belirler.
                  ),

                  child: Text(

                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green[900]),
                    '7.Sınıf',

                  ),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_8()));

                  },
                  style: TextButton.styleFrom(
                      minimumSize: Size(175, 175),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(

                        //Butonu oval yapıyor.
                          borderRadius: BorderRadius.all(Radius.elliptical(
                              20, 20))) //Butonun boyutunu belirler.
                  ),

                  child: Text(

                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.green[900]),
                    '8.Sınıf',

                  ),
                ),
              ],
                  ),
      ],
            )
            ),
    );
  }
}