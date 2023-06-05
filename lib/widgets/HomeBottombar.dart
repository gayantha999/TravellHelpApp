import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottombar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: [
        Icon(Icons.home, size: 32,),
        Icon(Icons.person_outline, size: 32,),
        Icon(Icons.favorite_outline, size: 32,),
        Icon(Icons.list, size: 32,),
      ],
    );
  }
}
