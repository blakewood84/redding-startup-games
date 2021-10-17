import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/global_components/background.dart';
import 'package:test/providers/community_provider.dart';
import 'package:test/screens/community/components/search.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({ Key? key }) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {

  
  late CommunityProvider? communityProvider;
  List<Community> hits = [];
  List<Community> originalHits = [];
  String query = '';

  @override
  void initState() {
    super.initState();
    communityProvider = Provider.of<CommunityProvider>(context, listen: false);
    hits = communityProvider!.data.map((e) => Community.fromData(e)).toList();
    originalHits = communityProvider!.data.map((e) => Community.fromData(e)).toList();
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
          AppBar(
            title: Text(
              'Community Forums',
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 0,
            ),
            width: double.infinity,
            child: SearchContainer(
              clearText: clearText,
              handleSearch: handleSearch
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 5
                ),
                Text(
                  'Suggested Channels'
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                SizedBox(
                  width: 20
                )
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: originalHits.length,
              itemBuilder: (_, int index) {
                return Container(
                  height: double.infinity,
                  width: 200,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  child: Background(
                    assetImage: AssetImage(originalHits[index].banner),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            originalHits[index].title
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.people),
                              Text(
                                '${originalHits[index].population}'
                              )
                            ],
                          )
                        ],
                      )
                    ),
                  )
                );
              }
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 5
                ),
                Text(
                  'My Communities'
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
                SizedBox(
                  width: 20
                )
              ],
            )
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: hits.length,
              itemBuilder: (_, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, 
                              width: 1
                          ),
                        ),
                        width: 65,
                        height: 65,
                        child: Image.asset(hits[index].banner, fit: BoxFit.fill,)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hits[index].title
                          ),
                          Row(
                            children: [
                              Icon(Icons.people, color: Colors.white,),
                              Text(
                                '${hits[index].population}'
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Public Group'
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              }
            ),
          )
          // Expanded(
          //   child: GridView.count(
          //     primary: false,
          //     padding: const EdgeInsets.all(20),
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //     crossAxisCount: 2,
          //     children: <Widget>[
          //       ...hits.map((e) => GestureDetector(
          //         onTap: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => CommunityPage(community: e)));
          //         },
          //         child: GridContainer(
          //           color: e.color, 
          //           title: e.title, 
          //           population: e.population, 
          //           assetLocation: e.banner
          //         ),
          //       ))
          //     ],
          //   ),
          // )
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