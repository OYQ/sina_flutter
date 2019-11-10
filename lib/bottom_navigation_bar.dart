import 'package:flutter/material.dart';
import 'bottom_navigation_bar_item.dart';

class SinaBottomNavBar extends StatefulWidget {
  SinaBottomNavBar({Key key, this.onTap}) : super(key:key);

  final ValueChanged<int> onTap;

  @override
  _SinaBottomNavBarState createState() => _SinaBottomNavBarState() ;
}

class _SinaBottomNavBarState extends State<SinaBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SinaBottomNarBarItem('第一',
            onTap: ()=>widget.onTap(0),
            child: Icon(
              Icons.home,
              size: 40,
              ),
          ),
          SinaBottomNarBarItem('第二',
            onTap: ()=>widget.onTap(1),
            child: Icon(
              Icons.play_arrow,
              size: 40,
              ),
          ),
          SinaBottomNarBarItem('第三',
            onTap: ()=>widget.onTap(2),
            child: Icon(
              Icons.email,
              size: 40,
              ),
          ),
          SinaBottomNarBarItem('第四',
            onTap: ()=>widget.onTap(3),
            child: Icon(
              Icons.airplay,
              size: 40,
              ),
          ),
          SinaBottomNarBarItem('第五',
            onTap: ()=>widget.onTap(4),
            child: Icon(
              Icons.add,
              size: 40,
              ),
          ),
        ],
      ),
    );
  }
}