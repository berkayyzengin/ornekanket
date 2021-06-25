import 'package:flutter/material.dart';
import 'package:ornek/sayfa6.dart';
import 'package:ornek/sonsayfa.dart';
import 'package:polls/polls.dart';

import 'hakkinda/hakkindasayfa7.dart';

class sayfa7 extends StatelessWidget{
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
      home: sayfa7Ekrani(),
    );
  }
}

class sayfa7Ekrani extends StatefulWidget {
  sayfa7Ekrani({Key? key}) : super(key: key);


  @override
  _sayfa7EkraniState createState() => _sayfa7EkraniState();
}

class _sayfa7EkraniState extends State<sayfa7Ekrani> {
  double secenek1= 3.0;
  double secenek2= 3.0;
  double secenek3= 1.0;
  double secenek4= 3.0;

  Map oyKullananlar = {
    'berkay@gmail.com': 3,
    'ahmet@gmail.com': 4,
    'elif@gmail.com': 2,
    'batuhan@gmail.com': 1,
    'zeynep@gmail.com': 4,
    'murat@gmail.com': 1,
    'hatice@gmail.com': 2,
    'mustafa@gmail.com': 4,
    'hudanur@gmail.com': 2,
    'berke@gmail.com': 1,
  };

  String kullanici = 'aktif_kullanici@gmail.com';
  String yonetici = 'yönetici@gmail.com';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Anket Ekranı'),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Polls(children: [
                Polls.options(title: 'Evet', value: secenek1),
                Polls.options(title: 'Hayır', value: secenek2),
                Polls.options(title: 'Kararsızım', value: secenek3),
                Polls.options(title: 'Fikrim Yok', value: secenek4),
              ],
                question: Text('Yönetim Bilişim Sistemleri bölümünden memnun musunuz?'),
                voteData: oyKullananlar,
                currentUser: kullanici,
                creatorID: yonetici,
                userChoice: oyKullananlar[this.kullanici],
                onVoteBackgroundColor: Colors.black,
                leadingBackgroundColor: Colors.black,
                backgroundColor: Colors.black,
                onVote: (secim) {
                  print(secim);
                  setState(() {
                    this.oyKullananlar[this.kullanici] = secim;
                  });

                  if(secim ==1){
                    setState(() {
                      secenek1 +=1;
                    });
                  }

                  else if(secim ==2){
                    setState(() {
                      secenek2 +=1;
                    });
                  }

                  else if(secim ==3){
                    setState(() {
                      secenek3 +=1;
                    });
                  }

                  else if(secim ==4){
                    setState(() {
                      secenek4 +=1;
                    });
                  }

                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new GestureDetector(
                  child: new Text("Anketi Bitirmek İçin Dokunun", style: TextStyle(color: Colors.blue), textAlign: TextAlign.center,),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sonsayfa()),);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new GestureDetector(
                  child: new Text("Önceki Soru için İki Defa Dokunun", style: TextStyle(color: Colors.blue), textAlign: TextAlign.center,),
                  onDoubleTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sayfa6()),);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: new GestureDetector(
                  child: new Text("Ayrıntılı Bilgi İçin Basılı Tutunuz", style: TextStyle(color: Colors.blue), textAlign: TextAlign.center,),
                  onLongPress: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => hakkindasayfa7()),);
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}