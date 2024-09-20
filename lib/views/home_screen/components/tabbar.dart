import 'package:chatapp/consts/strings.dart';
import 'package:flutter/material.dart';

Widget tabbar(){
  return Container(
    child: const RotatedBox(
      quarterTurns: 3,
      child: TabBar(
        labelColor: Colors.white,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.grey,
        indicator: BoxDecoration(),
        tabs: [
          Tab(
            text: chats,
          ),
          Tab(
            text: status,
          ),
          Tab(
            text: camera,
          ),
    ],),
    ),
  );
}
