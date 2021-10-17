import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test/screens/home/components/post.dart';

const staticData = [
  <String, dynamic>{
    'likes': 10,
    'comments': 5,
    'message': 'Hunting this afternoon with some wonderful peeps!',
    'imageLocation': 'assets/feed_photos/1.jpg'
  },
  <String, dynamic>{
    'likes': 20,
    'comments': 2,
    'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'imageLocation': 'assets/feed_photos/2.jpg'
  },
  <String, dynamic>{
    'likes': 54,
    'comments': 1,
    'message': 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    'imageLocation': 'assets/feed_photos/3.jpg'
  },
  <String, dynamic>{
    'likes': 101,
    'comments': 23,
    'message': 'Hunting this afternoon with some wonderful peeps!',
    'imageLocation': 'assets/feed_photos/4.jpg'
  },
  <String, dynamic>{
    'likes': 89,
    'comments': 3,
    'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'imageLocation': 'assets/feed_photos/5.jpg'
  },
  <String, dynamic>{
    'likes': 4,
    'comments': 1,
    'message': 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    'imageLocation': 'assets/feed_photos/6.jpg'
  },
  <String, dynamic>{
    'likes': 23,
    'comments': 8,
    'message': 'Hunting this afternoon with some wonderful peeps!',
    'imageLocation': 'assets/feed_photos/7.jpg'
  }
];

final List<FeedPost> feedData = staticData.map((e) => FeedPost.fromData(e)).toList();

class Feed extends StatefulWidget {
  const Feed({ Key? key }) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: feedData.length,
        itemBuilder: (_, int index) {
          return Post(
            comments: feedData[index].comments,
            likes: feedData[index].likes,
            imageLocation: feedData[index].imageLocation,
            message: feedData[index].message,
          );
        }
      )
    );
  }
}

class FeedPost {

  FeedPost({
    required this.imageLocation,
    required this.likes,
    required this.comments,
    required this.message,
  });

  final String imageLocation;
  final int likes;
  final int comments;
  final String message;

  factory FeedPost.fromData(Map<String,dynamic> post) {
    return FeedPost(
      imageLocation: post['imageLocation'], 
      likes: post['likes'], 
      comments: post['comments'], 
      message: post['message']
    );
  }

}