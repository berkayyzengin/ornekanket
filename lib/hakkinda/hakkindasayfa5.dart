import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sayfa5.dart';


class hakkindasayfa5 extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.center,
              // Yazı parametresini hizlamada nasıl ortalayacağız hocaya sor
              children: <Widget>[
                Image(image: AssetImage('assets/images/kitap'),),
                Text(
                    "78 milyon nüfusa sahip olan Türkiye’de geçtiğimiz yıl kişi başına düşen kitap sayısı 8.4 olurken, kitap okumaya ayırdığımız süre ortalama 1 dakika olarak açıklandı. TÜİK verilerine göre yayın sektöründe Türkiye 11. sırada. 2008’de 32 bin kitap basılırken bu sayı 2014’te 50 bini aştı. Bu da basılan kitap sayısı artarken, okuma oranında bir artış olmadığını gösterdi."),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: new GestureDetector(
                    child: new Text("Ankete Dönmek için Dokunun",
                      style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfa5()),);
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