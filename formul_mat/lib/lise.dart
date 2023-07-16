import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formul_mat/formul_9.dart';
import 'package:formul_mat/formul_5.dart';
import 'package:formul_mat/formul_10.dart';
import 'formul_11.dart';
import 'formul_12.dart';
import 'main.dart';

class lise extends StatelessWidget {
  const lise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('MATEMATİK FORMÜLLERİ'),
        backgroundColor: Colors.green[900],
      ),
      body:  Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/resimler/resim5.jpeg"),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_9()));

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
                      '9.Sınıf',

                    ),
                  ),
                  SizedBox(width: 30),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_10()));
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
                      '10.Sınıf',

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
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_11()));

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
                      '11.Sınıf',

                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  formul_12()));

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
                      '12.Sınıf',

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