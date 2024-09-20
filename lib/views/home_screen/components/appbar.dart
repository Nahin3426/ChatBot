import 'package:chatapp/consts/colors.dart';
import 'package:chatapp/consts/images.dart';
import 'package:chatapp/consts/strings.dart';
import 'package:flutter/material.dart';

import '../../../consts/utils.dart';

Widget appbar(GlobalKey<ScaffoldState>key){
  return Container(
    padding: EdgeInsets.only(right: 12),
    height: 80,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            key.currentState!.openDrawer();
          },
        child: Container(
          decoration: const BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
          ),
          width: 90,
          height: 80,
          child: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),),
        RichText(
            text: const TextSpan(
              children: [
                TextSpan(

                  text: "        $appname\n",
                  style: TextStyle(fontFamily: bold, fontSize: 22, color: Colors.black),
                ),
                TextSpan(
                  text: "                         $connect",
                  style: TextStyle(fontFamily: "lato", fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ],
            ),
        ),
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 24,
          child: Image.asset(ic_user,color: Colors.white,),
        ),
      ],

    ),
  );
}