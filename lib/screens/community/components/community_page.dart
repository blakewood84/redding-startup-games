import 'package:flutter/material.dart';
import 'package:test/screens/community/community.dart';

class CommunityPage extends StatefulWidget {
  final Community community;
  const CommunityPage({ required this.community, Key? key }) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(width: 55),
        actions: [
          SizedBox(width: 55)
        ],
        title: Center(
          child: Text(
            this.widget.community.title,
          )
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            
          ],
        )
      ),
    );
  }
}