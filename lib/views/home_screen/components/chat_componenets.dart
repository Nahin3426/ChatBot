import 'package:chatapp/consts/images.dart';
import 'package:chatapp/views/ChatScreen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget chatsComponents(){
  return Container(
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context,int index) {
          return ListTile(
            onTap: (){
              Get.to(()=> ChatScreen(),transition: Transition.downToUp);
            },
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: Image.asset(
                ic_user, // Make sure this asset exists in your project
                color: Colors.white,
              ),
            ),
            title: Text(
              "Dummy Name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600, // semiBold equivalent
              ),
            ),
            subtitle: Text(
              "Message Here...",
              style: TextStyle(
                fontWeight: FontWeight.w600, // semiBold equivalent
              ),
            ),
            trailing: Text(
              "Last Seen",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600, // semiBold equivalent
              ),
            ),
          );

        },
    ),
  );
}