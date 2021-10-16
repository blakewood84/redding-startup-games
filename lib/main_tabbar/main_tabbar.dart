import 'package:flutter/material.dart';
import 'package:test/screens/community/community.dart';
import 'package:test/screens/home/home.dart';
import 'package:test/screens/learn/learn.dart';

class MainTabbar extends StatefulWidget {
  const MainTabbar({ Key? key }) : super(key: key);

  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {
  int _currentIndex = 0;

  void _changeIndex(int index) => setState(() {
    print(index);
    _currentIndex = index;
  });

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(width: 55)
        ],
        leading: SizedBox(width: 55),
        title: Center(
          child: Text(
            'Hunting App',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        backgroundColor: Colors.white
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: IndexedStack(
          index: _currentIndex,
          children: [
            HomeScreen(),
            LearnScreen(),
            CommunityScreen()
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeIndex,
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
            icon: Icon(Icons.people),
            label: 'Community'
          )
        ],
      ),
    );
  }
}