import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/providers/community_provider.dart';
import 'package:test/screens/community/components/community_page.dart';
import 'package:test/screens/community/components/grid_container.dart';
import 'package:test/screens/community/components/search.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({ Key? key }) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {

  
  late CommunityProvider? communityProvider;
  List<Community> hits = [];
  String query = '';

  @override
  void initState() {
    super.initState();
    communityProvider = Provider.of<CommunityProvider>(context, listen: false);
    hits = communityProvider!.data.map((e) => Community.fromData(e)).toList();
    print(inspect(hits));
  }

  void handleSearch(String query) {
    print(query.isEmpty);
    List<Community> newHits = [];

    if(query.isEmpty) {
      setState(() {
        hits = communityProvider!.data.map((e) => Community.fromData(e)).toList();
      });
    }

    hits.forEach((ele) {
      if(ele.title.toLowerCase().contains(query.toLowerCase())) {
        newHits.add(ele);
      }
    });
    setState(() {
      hits = newHits;
    });
    
    
  }

  void clearText() {
    hits = communityProvider!.data.map((e) => Community.fromData(e)).toList();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            width: double.infinity,
            child: SearchContainer(
              clearText: clearText,
              handleSearch: handleSearch
            )
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                ...hits.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => CommunityPage(community: e,)));
                  },
                  child: GridContainer(
                    color: e.color, 
                    title: e.title, 
                    population: e.population, 
                    assetLocation: e.banner
                  ),
                ))
              ],
            ),
          )
        ],
      )
    );
  }
}

class Community {
  Community({
    required this.title, 
    required this.population,
    required this.id,
    required this.posts,
    required this.banner,
    required this.color
  });
  final int id;
  final String title;
  final int population;
  final List posts;
  final String banner;
  final Color color;

  factory Community.fromData(Map<String, dynamic> data) {
    return Community(
      title: data['title'], 
      population: data['population'], 
      id: data['id'] ?? 0, 
      posts: data['posts'], 
      banner: data['banner'],
      color: data['color']
    );
  }
}