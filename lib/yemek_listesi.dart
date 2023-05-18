import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/yemek.dart';
import 'data/strings.dart';
import 'yemek_item.dart';

class YemekListesi extends StatelessWidget {
  List<Yemek> tumyemekler = [];
  YemekListesi() {
    tumyemekler = veriKaynagi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 202, 219, 232),
        appBar: AppBar(
          title: Text("LEZZET'Lİ TARİFLER"),
          backgroundColor: Color.fromARGB(255, 165, 232, 118),
        ),
        body: Center(
          child: ListView.builder(
            shrinkWrap: false,
            primary: true,
            itemBuilder: (context, index) {
              return YemekItem(
                listelenenYemek: tumyemekler[index],
              );
            },
            itemCount: tumyemekler.length,
          ),
        ));
  }

  static veriKaynagi() {
    List<Yemek> gecici = [];
    int yemekSayisi = Strings.YEMEK_ADLARI.length;
    for (int i = 0; i < yemekSayisi; i++) {
      var yemekAdi = Strings.YEMEK_ADLARI[i];
      var yemekKaloriDegeri = Strings.YEMEK_KALORI_DGERI[i];
      var yemekicindekiler = Strings.YEMEK_ICINDEKILER[i];
      var yemekHazirlanisi = Strings.YEMEK_HAZIRLANISI[i];
      var yemekFoto = Strings.YEMEK_ADLARI[i] + '.jpg';
      Yemek eklenecekYemek = Yemek(yemekAdi, yemekKaloriDegeri,
          yemekicindekiler, yemekHazirlanisi, yemekFoto);
      gecici.add(eklenecekYemek);
    }
    return gecici;
  }
}
