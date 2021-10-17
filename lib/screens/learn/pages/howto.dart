import 'package:flutter/material.dart';

class HowToScreen extends StatelessWidget {

  final String text;
  final String title;
  final String imagePath;
  final List<String> categories;

  const HowToScreen({ required this.text, required this.title, required this.imagePath, required this.categories, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(this.imagePath, fit: BoxFit.fill,)
              ),
              Text(
                this.title,
                style: TextStyle(
                  fontSize: 30
                ),
              ),
              SizedBox(
                height: 20
              ),
              ...this.categories.map((e) => Card(
                child: ExpansionTile(
                  initiallyExpanded: e == 'Videos on this topic' ? true : false,
                  title: Text(
                    e,
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.black, 
                                  width: 1
                              ),
                            ),
                            height: 100,
                            width: 150,
                            child: Stack(
                              children: [
                                Positioned.fill(child: Image.asset(this.imagePath, fit: BoxFit.fill,)),
                                Positioned.fill(
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill),
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.black, 
                                  width: 1
                              ),
                            ),
                            height: 100,
                            width: 150,
                            child: Stack(
                              children: [
                                Positioned.fill(child: Image.asset(this.imagePath, fit: BoxFit.fill,)),
                                Positioned.fill(
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill),
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(
                                color: Colors.black, 
                                  width: 1
                              ),
                            ),
                            height: 100,
                            width: 150,
                            child: Stack(
                              children: [
                                Positioned.fill(child: Image.asset(this.imagePath, fit: BoxFit.fill,)),
                                Positioned.fill(
                                  child: Center(
                                    child: Icon(Icons.play_circle_fill),
                                  )
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          )
         ]
        ),
      )
    );
  }
}