import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final AssetImage assetImage;

  const Background({ required this.child, required this.assetImage });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          image: DecorationImage(
            image: assetImage, 
            fit: BoxFit.fill,
          ),
       ),
      child: Stack(
        children: [
          child
        ],
      ),
    );
  }
}