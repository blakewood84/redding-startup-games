import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

    Future.delayed(Duration(seconds: 6)).then((value) => 
      Navigator.push(context, MaterialPageRoute(builder: (_) => MainTabbar()))
    );
  }


  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Image.asset('assets/splash.jpg'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'The Hunting App',
                  style: GoogleFonts.imFellEnglish(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    )
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}