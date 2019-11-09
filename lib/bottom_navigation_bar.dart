import 'package:flutter/material.dart';

class SinaBottomNavBar extends StatefulWidget {
  @override
  _SinaBottomNavBarState createState() => _SinaBottomNavBarState() ;
}

class _SinaBottomNavBarState extends State<SinaBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
}

class SinaBottomNarBarItem extends StatefulWidget {
  SinaBottomNarBarItem(this.title,{
    Key key, 
    this.child, 
    selected, 
    selectedColor, 
    unselectedColor
    }) : assert(title == null),  
         selected = selected ?? false,
         selectedColor = selectedColor ?? Colors.black,
         unselectedColor = unselectedColor ?? Colors.red,
    super(key :key);

  final String title;
  final bool selected;
  final Widget child;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  _SinaBottomNarBarItemState createState() => _SinaBottomNarBarItemState();
}

class _SinaBottomNarBarItemState extends State<SinaBottomNarBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}