import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'bottom_navigation_bar_item.dart';

class SinaBottomNavBar extends StatefulWidget {
  SinaBottomNavBar({Key key, this.onTap}) : super(key:key);

  final ValueChanged<int> onTap;

  @override
  _SinaBottomNavBarState createState() => _SinaBottomNavBarState() ;
}

class _SinaBottomNavBarState extends State<SinaBottomNavBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SinaBottomNarBarItem('微博',
            onTap: ()=>barItemTap(0),
            unselectedImageName: 'src/images/tabbar_discover.png',
            selectedImageName: 'src/images/tabbar_discover_highlighted.png',
            selected: _selectIndex == 0 ? true : false,
          ),
          SinaBottomNarBarItem('视频',
            onTap: ()=>barItemTap(1),
            unselectedImageName: 'src/images/tabbar_video.png',
            selectedImageName: 'src/images/tabbar_video_highlighted.png',
            selected: _selectIndex == 1 ? true : false,
          ),
          SinaBottomNarBarItem('发现',
            onTap: ()=>barItemTap(2),
            unselectedImageName: 'src/images/tabbar_home.png',
            selectedImageName: 'src/images/tabbar_home_highlighted.png',
            selected: _selectIndex == 2 ? true : false,
          ),
          SinaBottomNarBarItem('消息',
            onTap: ()=>barItemTap(3),
            unselectedImageName: 'src/images/tabbar_message_center.png',
            selectedImageName: 'src/images/tabbar_message_center_highlighted.png',
            selected: _selectIndex == 3 ? true : false,
          ),
          SinaBottomNarBarItem('我',
            onTap: ()=>barItemTap(4),
            unselectedImageName: 'src/images/tabbar_profile.png',
            selectedImageName: 'src/images/tabbar_profile_highlighted.png',
            selected: _selectIndex == 4 ? true : false,
          ),
        ],
      ),
    );
  }

  void barItemTap(int index){
    _selectIndex = index;
    setState(() {});
    widget.onTap(_selectIndex);
  }
}