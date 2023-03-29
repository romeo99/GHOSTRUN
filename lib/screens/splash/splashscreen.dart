//create me a splash screen

import 'package:flutter/material.dart';
import 'package:ghostrun/screens/auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              RichText(
                text: const TextSpan(
                  text: 'GHOST',
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: 'Ubuntu'),
                  children: [
                    TextSpan(
                      text: 'RUN',
                      style: TextStyle(
                          color: Color(0xFFCCED00),
                          fontSize: 30,
                          fontFamily: 'Ubuntu'),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
