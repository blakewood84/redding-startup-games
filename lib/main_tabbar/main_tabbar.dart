import 'package:flutter/material.dart';
import 'package:test/global_components/background.dart';

class MainTabbar extends StatefulWidget {
  const MainTabbar({ Key? key }) : super(key: key);

  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {


  void changeIndex(int index) {

  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Background(
          assetImage: AssetImage('assets/splash.jpg'),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('hello')
              ],
            ),
          ),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rule_rounded),
            label: 'Learn'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Maps'
          )
        ],
      ),
    );
  }
}