import 'package:chatapp/views/home_screen/components/chat_componenets.dart';
import 'package:chatapp/views/home_screen/components/status_component.dart';
import 'package:flutter/material.dart';

Widget TabbarView(){
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))),
      child: TabBarView(
        children: [
          Container(
            decoration: const BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
            ),
            child: chatsComponents(),
          ),
          Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
              color: Colors.white,
            ),
            child: statusComponent(),
          ),
          Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
              color: Colors.green,
            ),

          ),
        ],
      ),
    )
  );
}