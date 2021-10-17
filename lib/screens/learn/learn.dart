import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test/screens/learn/pages/animals.dart';
import 'package:test/screens/learn/pages/gear.dart';
import 'package:test/screens/learn/pages/howto.dart';
import 'package:test/screens/learn/pages/video.dart';
import 'package:video_player/video_player.dart';

const howToData = [
  {
    'topic': 'Field Dress',
    'image': 'assets/learn/howto/field_dress.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
  {
    'topic': 'Skin an Animal',
    'image': 'assets/learn/howto/skinning.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
  {
    'topic': 'Pick Your Rifle',
    'image': 'assets/learn/gear/rifles.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
  {
    'topic': 'Pick Your Gear',
    'image': 'assets/learn/howto/hunting.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
  {
    'topic': 'Hunt',
    'image': 'assets/learn/howto/hunting2.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
  {
    'topic': 'Cook Your Kill',
    'image': 'assets/learn/howto/cook.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Videos on this topic',
      'Who Does This?',
      'Why Do This?',
      'Is this for me?',
      'Hunting is the best!',
    ]
  },
];

const animalData = [
  {
    'topic': 'Deer',
    'image': 'assets/learn/animals/deer.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
  {
    'topic': 'Bear',
    'image': 'assets/learn/animals/bears.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
  {
    'topic': 'Geese',
    'image': 'assets/learn/animals/geese.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
  {
    'topic': 'Ducks',
    'image': 'assets/learn/animals/ducks.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
  {
    'topic': 'Elk',
    'image': 'assets/learn/animals/elk.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
  {
    'topic': 'Wolfs',
    'image': 'assets/learn/animals/wolfs.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'How to Skin',
      'How to Field Dress',
      'Type of Ammo to Use',
      'Type of Gun to Use',
      'Where to find?',
      'How to Track?',
    ]
  },
];

const gearData = [
  {
    'topic': 'Bows',
    'image': 'assets/learn/gear/bow.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
  {
    'topic': 'Gear',
    'image': 'assets/learn/gear/gear.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
  {
    'topic': 'Hunting Stuff',
    'image': 'assets/learn/gear/gear2.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
  {
    'topic': 'More Stuff',
    'image': 'assets/learn/gear/gear3.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
  {
    'topic': 'Rifles',
    'image': 'assets/learn/gear/rifles.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
  {
    'topic': 'Knives',
    'image': 'assets/learn/gear/knives.jpg',
    'text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet consectetur adipiscing elit ut. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Suscipit tellus mauris a diam. Montes nascetur ridiculus mus mauris vitae ultricies leo. Cursus euismod quis viverra nibh cras pulvinar mattis. Lorem ipsum dolor sit amet consectetur adipiscing elit. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Euismod elementum nisi quis eleifend. Neque laoreet suspendisse interdum consectetur libero id faucibus. Orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt.',
    'categories': [
      'Where to Shop',
      'Where to get deals',
      'What\'s new in 2021?',
      'Sponsors',
      'Biggest Players',
      'Discounts',
    ]
  },
];

class LearnScreen extends StatefulWidget {
  const LearnScreen({ Key? key }) : super(key: key);

  @override
  _LearnScreenState createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {

  late VideoPlayerController _controller;
  bool playing = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/video.mp4')
    ..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  playing = !playing;
                  _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
                });
              },
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    if(playing) Positioned.fill(child: Image.asset('assets/videos/video_cover.png', fit: BoxFit.fill)),
                    if(_controller.value.isInitialized) Positioned.fill(child: VideoPlayer(_controller)),
                    Center(
                      child: playing ? Icon(Icons.pause_circle_filled, size: 50) : Icon(Icons.play_circle_fill, size: 50,),
                    )
                  ],
                )
              ),
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
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => HowToScreen(
                      text: howToData[index]['text'] as String, 
                      title: 'Guide on How to ${howToData[index]['topic']}', 
                      imagePath: howToData[index]['image'] as String, 
                      categories: howToData[index]['categories'] as List<String>,
                    )));
                  },
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: double.infinity,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned.fill(child: Image.asset(howToData[index]['image'] as String, fit: BoxFit.fill),),
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
                  ),
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
                itemCount: animalData.length,
                itemBuilder: (_, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => AnimalsScreen(
                      title: 'Everything you need to know about ${animalData[index]['topic']}',
                      imagePath: animalData[index]['image'] as String,
                      text: animalData[index]['text'] as String,
                      categories: animalData[index]['categories'] as List<String>,

                    )));
                  },
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: double.infinity,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned.fill(child: Image.asset(animalData[index]['image'] as String, fit: BoxFit.fill),),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                animalData[index]['topic'] as String
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
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
                itemCount: gearData.length,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => GeerScreen(
                        text: gearData[index]['text'] as String, 
                        title: 'Guide on How to ${gearData[index]['topic']}', 
                        imagePath: gearData[index]['image'] as String, 
                        categories: gearData[index]['categories'] as List<String>,
                      )));
                    },
                    child: Container(
                      color: Colors.red,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: double.infinity,
                      width: 200,
                      child: Stack(
                        children: [
                          Positioned.fill(child: Image.asset(gearData[index]['image'] as String, fit: BoxFit.fill),),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  gearData[index]['topic'] as String
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                  );
              }),
            ),
          ],
        ),
      )
    );
  }
}