import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek/sayfa6.dart';

import '../sayfa7.dart';


class hakkindasayfa7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anket',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        fontFamily: 'Georgia',

        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Hakkında')
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,                          // Yazı parametresini hizlamada nasıl ortalayacağız hocaya sor
              children: <Widget>[
                Image(image: AssetImage('assets/images/mis'),),
                Text("Türkiye'de YBS çalışmaları ilk olarak 1991 yılında, Marmara Üniversitesi'nde , İşletme Enformatiği bölümünün kurulması ile kurumsal olarak başlamıştır ve bölüm eğitimlerine Almanca olarak devam etmektedir. Ayrıca çatı platform olarak, Türkiye'deki bütün yönetim bilişim sistemleri ve işletme enformatiği bölümlerini birleştiren YBSIE yapısı 2009 yılında kurulmuştur"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: new GestureDetector(
                    child: new Text("Ankete Dönmek için Dokunun", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfa7()),);
                    },
                  )
                  ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}