import 'package:flutter/material.dart';
import 'package:test/main_tabbar/main_tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) => 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainTabbar()))
    );
  }


  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * .8,
              height: size.width * .7,
              child: Image.asset('assets/logo_white.png'),
            )
          ],
        )
      )
    );
  }
}