import 'package:flutter/material.dart';

const double kToolbarHeight = 56.0;

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x99E6E6E6),
      child: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(13),
                    child: Image.asset('src/images/compose_camerabutton_background.png', 
                      width: 30, 
                      height: 30,
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 13,
                      bottom: 13,
                    ),
                    child: Image.asset('src/images/video_red_pocket_default.png', 
                      width: 30, 
                      height: 30,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(13),
                    child: Image.asset('src/images/navigationbar_icon_compose.png', 
                      width: 30, 
                      height: 30,
                      ),
                  ),
                ],
              ),
              Center(
                child: HomePageAppBarCenter(),
              ),
            ],
          )
        ),
      ),
    );
  }
}

class HomePageAppBarCenter extends StatelessWidget {

  final TextStyle textStyle = TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('关注',
                  style: textStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Image.asset('src/images/navigationbar_arrow_down_new.png', 
                    width: 10, 
                    height: 10,
                  ),
                )
              ],
            ),
          ),
          Text('热门',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}