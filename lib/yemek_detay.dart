import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/yemek.dart';

class YemekDetay extends StatelessWidget {
  final Yemek secilenYemek;
  const YemekDetay({required this.secilenYemek, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 222, 237),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              secilenYemek.yemekAdi + ' Malzemeleri Ve Tarifi',
              style: TextStyle(fontSize: 20),
            ),
            expandedHeight: 250,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(
                background:
                    // Image.asset('images/' + secilenYemek.yemekFoto),
                    Image(
                        image: AssetImage('images/' + secilenYemek.yemekFoto),
                        fit: BoxFit.fill)),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        secilenYemek.yemekIcindekiler,
                        style:
                            TextStyle(fontSize: 20, color: Colors.red.shade900),
                      ),
                      Text(
                        secilenYemek.yemekTarifi,
                        style:
                            TextStyle(fontSize: 20, color: Colors.red.shade900),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
