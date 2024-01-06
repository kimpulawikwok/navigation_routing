import 'package:flutter/material.dart';
import 'package:navigation_routing/halaman_dua.dart';
import 'package:navigation_routing/halaman_dua_dengan_data.dart';
import 'package:navigation_routing/halaman_lainnya.dart';
import 'package:navigation_routing/halaman_pengganti.dart';
import 'package:navigation_routing/halaman_pertama.dart';
import 'package:navigation_routing/mengembalikan_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HalamanPertama(),
        '/halaman-kedua': (context) => HalamanKedua(),
        '/halaman-kedua-dengan-data': (context) => HalamanKeduaDenganData(
            data: ModalRoute.of(context)?.settings.arguments as String),
        '/mengembalikan-data': (context) => MengembalikanData(),
        '/halaman-pengganti': (context) => HalamanPengganti(),
        '/halaman-lainnya': (context) => HalamanLainnya(),
      },
    );
  }
}
