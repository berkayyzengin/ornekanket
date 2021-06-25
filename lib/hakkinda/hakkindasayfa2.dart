import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek/giris.dart';
import 'package:ornek/sayfa2.dart';

class hakkindasayfa2 extends StatelessWidget {
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
                Image(image: AssetImage('assets/images/online'),),
                Text(
                    "Öğrencilerin ve eğitmenlerin aynı ortamda bulunduğu geleneksel örgün eğitim yönetimden farklı olarak, Online eğitim, ders veren eğitmen ile öğrencinin aynı mekânda bulunmadığı eğitim sistemini anlatan bir terimdir. Üniversite eğitiminin bir parçası haline gelen online eğitim, mekâna ve zamana bağlı olmaksızın öğrencinin ve öğretim üyesinin kampüste bir araya gelme zorunluluğu olmaksızın, derslerin bilgisayar teknolojileri aracılığıyla, sanal ortamda, görüntülü ve sesli olarak işlendiği, öğrencilerin istediği zaman bu dersleri tekrar izleyebileceği akılcı, çağdaş, yenilikçi bir eğitim sistemidir."
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: new GestureDetector(
                    child: new Text("Ankete Dönmek için Dokunun", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sayfa2()),);
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