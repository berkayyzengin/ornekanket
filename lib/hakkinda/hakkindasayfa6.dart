import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek/sayfa6.dart';


class hakkindasayfa6 extends StatelessWidget {
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
                Image(image: AssetImage('assets/images/mobil'),),
                Text("Avrupa ülkelerindeki yazılım geliştirici sayıları açıklandı. Türkiyede 140 bin yazılım geliştirici olduğu görülürken, birinci sıraya 837 bin ile Almanya'nın yerleştiği kaydedildi. Almanya'ya en yakın ülke ise 814 bin ile İngiltere olurken, üçüncü ülke 467 bin yazılım geliştiriciyle Fransa olarak kayıtlara geçti."),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: new GestureDetector(
                    child: new Text("Ankete Dönmek için Dokunun", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfa6()),);
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