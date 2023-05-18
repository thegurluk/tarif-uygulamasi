import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yemektarifiuygulamasi/yemek_detay.dart';

import 'model/yemek.dart';

class YemekItem extends StatelessWidget {
  final Yemek listelenenYemek;
  const YemekItem({required this.listelenenYemek, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        elevation: 20,
        margin: EdgeInsets.only(top: 0.00000000001),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => YemekDetay(secilenYemek: listelenenYemek),
              ),
            );
          },
          leading: Image.asset(
            'images/' + listelenenYemek.yemekFoto,
            width: 64,
            height: 64,
          ),
          title: Text(
            listelenenYemek.yemekAdi,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(listelenenYemek.yemekKaloriDegeri + ' kalori'),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          iconColor: Colors.red,
        ),
      ),
    );
  }
}
