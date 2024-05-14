// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          namaHewan ?? "gambar kosong",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              gantiNama("kucing");
              print(namaHewan);
            },
            child: Card(
              child: Image.asset(
                "aset_media/gambar/kucing.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              gantiNama("sapi");
              print(namaHewan);
            },
            child: Card(
              child: Image.asset("aset_media/gambar/sapi.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              gantiNama("bebek");
              print(namaHewan);
            },
            child: Card(
              child: Image.asset("aset_media/gambar/bebek.png"),
            ),
          ),
          Card(),
          Card(),
        ],
      ),
    );
  }
}
