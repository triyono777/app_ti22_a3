import 'dart:async';

import 'package:app_ti22_a3/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  
    super.initState();
    Timer(const Duration(seconds: 3), () async{
      var box  = await Hive.openBox("userBox");
     

      if (box.get("sudahLogin")==true){
        Get.off(() =>  HomeScreen());
      }else{
        Get.off(() =>  LoginScreen());
      }

  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('aset_media/ani_loti/attention.json', height: 50),
      ), 
    );
  }
}
