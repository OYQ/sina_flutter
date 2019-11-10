import 'package:flutter/material.dart';

typedef SinaBottomNarBarItemTapCallback = void Function();

class SinaBottomNarBarItem extends StatefulWidget {
  SinaBottomNarBarItem(this.title,{
    Key key, 
    this.child, 
    this.onTap,
    selected, 
    selectedColor, 
    unselectedColor
    }) : assert(title != null),  
         selected = selected ?? false,
         selectedColor = selectedColor ?? Colors.black,
         unselectedColor = unselectedColor ?? Colors.red,
    super(key :key);

  final String title;
  final bool selected;
  final Widget child;
  final Color selectedColor;
  final Color unselectedColor;
  final GestureTapCallback onTap;

  @override
  _SinaBottomNarBarItemState createState() => _SinaBottomNarBarItemState();
}

class _SinaBottomNarBarItemState extends State<SinaBottomNarBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.child,
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}