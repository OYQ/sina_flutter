import 'package:flutter/material.dart';

typedef SinaBottomNarBarItemTapCallback = void Function();

class SinaBottomNarBarItem extends StatelessWidget {
  SinaBottomNarBarItem(this.title,{
    Key key, 
    this.selectedImageName, 
    this.unselectedImageName, 
    this.onTap,
    this.selected = false,
    this.redBeanCount = 0,
    }) : assert(title != null),
         assert(selectedImageName != null),
         assert(unselectedImageName != null),
    super(key :key);

  final String title;
  final String selectedImageName;
  final String unselectedImageName;
  final GestureTapCallback onTap;
  final bool selected;
  final int redBeanCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              selected ? selectedImageName : unselectedImageName, 
              width: 40, 
              height: 40,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}