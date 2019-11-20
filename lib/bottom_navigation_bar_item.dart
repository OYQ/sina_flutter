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
      child: Stack(
        children: <Widget>[
          Center(
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
          Positioned(
            right: 5,
            child: RedBean(11),
          ),
        ],
      ),
    );
  }
}

class RedBean extends StatelessWidget {
  final double height = 25;
  final int count;
  RedBean(this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(
        left: 5,
        right: 5
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height/2),
        border: Border.all(color: Colors.white, width: 2),
        color: Color(0xFFFF0000),
      ),
      child: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),  
      ),
    );
  }
}
