import 'package:flutter/material.dart';

class HomeScrollBar extends StatelessWidget {
  const HomeScrollBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, 
            width: 1
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/1.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/2.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/3.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/4.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/5.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/6.jpg'),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, 
                  width: 1
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/feed_photos/7.jpg'),
            ),
          ),
        ],
      )
    );
  }
}