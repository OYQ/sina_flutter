import 'package:flutter/material.dart';

const double kToolbarHeight = 56.0;

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0x99E6E6E6),
    );
  }

  
}