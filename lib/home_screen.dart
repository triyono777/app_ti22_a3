// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_ti22_a3/gambar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'login_screen.dart';
import 'tombol_helo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: ()async{
            var box = await Hive.openBox('userBox');
            // await box.clear();
            await box.put("sudahLogin", false);
            Get.off(()=>LoginScreen());
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GambarScreen(),
                ),
              );
            },
            leading: Icon(
              Icons.image,
              color: Colors.white,
            ),
            tileColor: Colors.blueAccent,
            textColor: Colors.white,
            title: Text('Gambar'),
            subtitle: Text('halaman contoh gambar'),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text('lain lain'),
            subtitle: Text("halaman contoh lain"),
          ),
        ],
      ),
    );
  }
}
