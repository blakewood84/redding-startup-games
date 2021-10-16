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
      appBar: AppBar(),
      body: Container(),
    );
  }
}