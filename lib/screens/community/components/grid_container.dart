import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridContainer extends StatelessWidget {
  
  final String title;
  final int population;
  final String assetLocation;
  final Color color;

  const GridContainer({ required this.color, required this.title, required this.population, required this.assetLocation, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 75,
            child: Image.asset(this.assetLocation, fit: BoxFit.fill)
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 16
                    )
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.people),
                              Text(
                                '${this.population}',
                                style: TextStyle(
                                  fontSize: 16
                                )
                              )
                            ],
                          )
                        ],
                      )
                    ),
                  )
                ],
              )   
            )
          ) 
        ],
      )
    );
  }
}