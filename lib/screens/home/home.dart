import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test/screens/home/components/feed.dart';
import 'package:test/screens/home/components/profile_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: SizedBox(),
            title: Text(
              'Hunting',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.download)),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.mail)),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.favorite)),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(Icons.send)),
            ],
          ),
          HomeScrollBar(),
          Container(
            height: 45,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox()
                ),
                Container(
                  width: size.width * .45,
                  height: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent
                    ),
                    onPressed: () {

                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.task),
                        Text('Log Hunt')
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: SizedBox()
                ),
                Container(
                  width: size.width * .45,
                  height: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent
                    ),
                    onPressed: () {
                    }, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle_outline_sharp),
                        Text('Create Post')
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: SizedBox()
                ),
              ],
            ),
          ),
          Feed()
        ],
      )
    );
  }
}