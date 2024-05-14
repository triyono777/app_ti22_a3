// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TombolHelo extends StatelessWidget {
  const TombolHelo({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('halo');
        aksiDialog(context);
      },
      child: Text('Tampil Helo'),
    );
  }

  aksiDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Suprise.......'),
      content: Text('Halo....'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
