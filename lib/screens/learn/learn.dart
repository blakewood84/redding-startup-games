import 'package:flutter/material.dart';
import 'package:test/global_components/background.dart';

const howToData = [
  {
    'topic': 'Field Dress',
    'image': 'assets/learn/howto/field_dress.jpg'
  },
  {
    'topic': 'Skin an Animal',
    'image': 'assets/learn/howto/skinning.jpg'
  },
  {
    'topic': 'Pick Your Rifle',
    'image': 'assets/learn/gear/rifles.jpg'
  },
  {
    'topic': 'Pick Your Gear',
    'image': 'assets/learn/howto/hunting.jpg'
  },
  {
    'topic': 'Hunt',
    'image': 'assets/learn/howto/hunting2.jpg'
  },
  {
    'topic': 'Cook Your Kill',
    'image': 'assets/learn/howto/cook.jpg'
  },
];

const animalData = [
  {
    'topic': 'Deer',
    'image': 'assets/learn/animals/deer.jpg'
  },
  {
    'topic': 'Bear',
    'image': 'assets/learn/animals/bear.jpg'
  },
  {
    'topic': 'Geese',
    'image': 'assets/learn/animals/geese.jpg'
  },
  {
    'topic': 'Ducks',
    'image': 'assets/learn/animals/ducks.jpg'
  },
  {
    'topic': 'Elk',
    'image': 'assets/learn/animals/elk.jpg'
  },
  {
    'topic': 'Wolfs',
    'image': 'assets/learn/animals/wolfs.jpg'
  },
];

const gearData = [
  {
    'topic': 'Bows',
    'image': 'assets/learn/gear/bow.jpg'
  },
  {
    'topic': 'Gear',
    'image': 'assets/learn/gear/gear.jpg'
  },
  {
    'topic': 'Hunting Stuff',
    'image': 'assets/learn/gear/gear2.jpg'
  },
  {
    'topic': 'More Stuff',
    'image': 'assets/learn/gear/gear3.jpg'
  },
  {
    'topic': 'Rifles',
    'image': 'assets/learn/gear/rifles.jpg'
  },
  {
    'topic': 'Clothes',
    'image': 'assets/learn/gear/hunter_jacker.jpg'
  },
  {
    'topic': 'Knives',
    'image': 'assets/learn/gear/knives.jpg'
  },
];

class LearnScreen extends StatefulWidget {
  const LearnScreen({ Key? key }) : super(key: key);

  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 200,
            child: Image.asset('assets/learn/intro.jpg', fit: BoxFit.fill)
          ),
          SizedBox(
            height: 15
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'How To',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: howToData.length,
              itemBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.red,
                height: 90,
                width: 200,
                child: Stack(
                  children: [
                    Image.asset(howToData[index]['image'] as String),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            howToData[index]['topic'] as String
                          )
                        ],
                      ),
                    )
                  ],
                )
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10,),
            child: Text(
              'Animals',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: howToData.length,
              itemBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.red,
                height: 90,
                width: 200,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            howToData[index]['topic'] as String
                          )
                        ],
                      ),
                    )
                  ],
                )
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10,),
            child: Text(
              'Gear',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: howToData.length,
              itemBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.red,
                height: 90,
                width: 200,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            howToData[index]['topic'] as String
                          )
                        ],
                      ),
                    )
                  ],
                )
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10,),
            child: Text(
              'Articles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: howToData.length,
              itemBuilder: (_, int index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.red,
                height: 90,
                width: 200,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            howToData[index]['topic'] as String
                          )
                        ],
                      ),
                    )
                  ],
                )
              );
            }),
          ),
        ],
      )
    );
  }
}