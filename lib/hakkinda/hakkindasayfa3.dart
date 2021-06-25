import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek/sayfa3.dart';

class hakkindasayfa3 extends StatelessWidget {
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
                Image(image: AssetImage('assets/images/yurtdisi'),),
                Text("Türkiye'den 2018 yılında göç edenlerin sayısının ise 323 bin 918 olduğu bildirildi. Türkiye'den 2019 yılında yurtdışına göç eden nüfusun 84 bin 863'ünü Türkiye Cumhuriyeti vatandaşları, 245 bin 426'sını ise yabancı uyruklu nüfus oluşturdu"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: new GestureDetector(
                    child: new Text("Ankete Dönmek için Dokunun", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfa3()),);
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