import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String message;
  final int likes;
  final int comments;
  final String imageLocation;
  const Post({ required this.message, required this.likes, required this.comments, required this.imageLocation, Key? key }) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[400]!, 
            width: 1
        ),
      ),
      child: Column(
        children: [
          Image.asset(this.widget.imageLocation, fit: BoxFit.fill,),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.favorite),
                      ),
                      Text('${this.widget.likes}'),
                      SizedBox(width: 10),
                      Container(
                        child: Icon(Icons.chat),
                      ),
                      Text('${this.widget.comments}'),
                      SizedBox(width: 10),
                      Container(
                        child: Icon(Icons.send),
                      ),
                      Expanded(
                        child: SizedBox()
                      ),
                      Container(
                        child: Icon(Icons.bookmark),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    this.widget.message,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}