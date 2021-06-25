import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek/giris.dart';

class hakkindagiris extends StatelessWidget {
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
                Image(image: AssetImage('assets/images/superlig'),),
                Text(
                    " Türkiye 1. Futbol Ligi şimdiki adıyla Süper Lig'in başlangıç tarihi 1959 olarak kabul edilir. "
                        "1959 yılında düzenlenen Türkiye 1. Futbol Ligi'nin ilk sezonunda maçlar, 8'er takımdan oluşan Beyaz ve Kırmızı adlı iki grupta oynandı. "
                        "O tarihteki  statü uyarınca  beyaz grubun lideri  Fenerbahçe ile kırmızı grubun lideri Galatasaray finalde karşılaştı. "
                        "İlk maçı Galatasaray 1-0, ikinci maçı ise Fenerbahçe 4-0 kazanınca, Türkiye 1. futbol Ligi'nin ilk şampiyonu Fenerbahçe oldu. "
                        "1959-1960 sezonundan itibaren ise grup sistemi kaldırıldı ve Türkiye 1. Ligi bugünkü statüsü ile oynanmaya başlandı. Lig'de 1987-1988 sezonuna kadar galibiyete 2 puan verilirken, bu sezondan itibaren galibiyete 3 puan verilmeye başlandı. "
                        "2002-03 sezonunda adı Türkiye Süper Ligi olarak değiştirilen lig, 2005-06 - 2009-2010 sezonları arasında Turkcell Süper Lig adı ile, 2010-2011 - 2018-2019 sezonları arasında ise Spor Toto Süper Lig ismiyle kullanıldı."
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new GestureDetector(
                      child: new Text("Ankete Dönmek için Dokunun", style: TextStyle(color: Colors.blue),),
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => giris()),);
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