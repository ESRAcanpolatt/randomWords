import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(BenimUygulamam());

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: Sozler(),
    );
  }
}

class Sozler extends StatefulWidget {
  @override
  _SozlerState createState() => _SozlerState();
}

int yanitIndex = 0;

class _SozlerState extends State<Sozler> {
  List<String> yanitlar = [
    'TIKLA MOTİVASYONUN GELSİN',
    'AŞK: Sen çok sev de bırakıp giden yar utansın.',
    'AŞK:Yanında olduğum zaman değerimi bilmezsen; değerimi bildiğin gün beni yanında bulamazsın…',
    'AŞK: Sevdiğini belli et. Gizlemek başkalarına fırsat vermektir..',
    'AŞK: Yaprak ağaçtan sıkılmıştı, bahar bahaneydi...',
    'AŞK: Bir kadının yüreği sırlarla dolu okyanustur',
    'BAŞARI: Çalışanlar, kötülük düşünmeye vakit bulamazlar. Çalışmayanlar ise kendilerini kötülükten kurtaramazlar..',
    'BAŞARI:Başarının yolu inanmaktan geçer.',
    'BAŞARI:Sadece şunu hatırlayın:Düşlerinizi gerçekleştirmeniz imkansızdır diyenler, zaten kendi düşlerinden vazgeçmiş insanlardır.',
    'BAŞARI:Başarı bir yolculuktur, bir varış noktası değildir.',
    'BAŞARI:Risk alacak kadar cesur olmayan biri hayatta hiçbir şey başaramaz.  ',
    'TAVSİYE: Bugün kendine güvenerek başla ve hayatının en mutlu günü olacağına inan :) ',
    'TAVSİYE: Ne kadar kötü bir gün de olsa pes etme her karanlığın ardından bir ışık doğar. ',
    'TAVSİYE: Bugün sadece içinden geldiği gibi davran rol yapmayı bırak (acında gülüşün kadar güzel)',
    'TAVSİYE: Gülümsemeyi sakın ihmal etme çünkü gülümsemek en çok sana yakışyor :)',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et....'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          'GÜNÜN MOTİVASYONU',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              margin: EdgeInsets.only(bottom: 20),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.redAccent),
                title: Text(
                  'AŞK SÖZLERİ',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.star_rate,
                  color: Colors.green,
                ),
                title: Text(
                  'BAŞARI MOTİVASYONU',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.event_available,
                  color: Colors.blue,
                ),
                title: Text(
                  'GÜNLÜK TAVSİYE',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 150,
                width: double.infinity,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Text(yanitlar[yanitIndex],
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center))),
          ],
        ),
      ),
    );
  }
}
