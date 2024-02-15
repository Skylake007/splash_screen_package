library splash_screen_package;

import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Function(BuildContext context) checkLoginStatus;
  String? title;

  SplashScreen({Key? key, this.title, required this.checkLoginStatus}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => widget.checkLoginStatus(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'packages/splash_screen_package/assets/images/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 400,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Image.asset(
                        'packages/splash_screen_package/assets/images/logo.jpg',
                        fit: BoxFit.cover,
                        width: 120,
                        height: 120,
                      ),
                      Text(widget.title ?? '', style: const TextStyle(fontSize: 25, color: Colors.red),),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
