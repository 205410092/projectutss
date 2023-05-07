import 'package:flutter/material.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override //fungsi @override untuk memberitahu kita bahwa method tersebut
  // seharusnya ter-override dari superclass-nya dan jika tidak
  // compiler akan mengeluarkan error karena method tersebut
  // tidak ditemukan dalam superclass
  void initState() {
    super.initState();
    openHome();
  }

  @override
  Widget build(BuildContext context) {
    //Fungsi dari widget dalam pembuatan aplikasi adalah
    // untuk memberikan antarmuka pengguna
    // (user interface) yang interaktif dan mudah digunakan
    return Scaffold(
      body: Center(
        child: Image.asset(
           //fungsi image adalah untuk
          // memberikan elemen visual pada antarmuka pengguna aplikasi
          'assets/images/logo.png',
          scale: 8,
        ),
      ),
    );
  }

  openHome() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainScreen()));
    }); //Navigator digunakan untuk mengatur navigasi antar halaman
        // (screen) atau fragmen dalam aplikasi Android
  }
}
