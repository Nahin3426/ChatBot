import 'package:chatapp/consts/consts.dart';
import 'package:flutter/rendering.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const[
          Icon(
            Icons.more_vert_rounded,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
        ),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Username\n",
                        style: TextStyle(fontFamily: bold,fontSize: 16,color: Colors.black),
                      ),
                      TextSpan(
                        text: "Last Seen",
                        style: TextStyle(fontSize: 10,color: Colors.grey),
                      ),
                    ],
                  ),),),
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.video_call_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Replaces 10.WidthBox
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Replaces 10.WidthBox
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding( padding: const EdgeInsets.only(bottom: 10.0),
                    child:Directionality(
                    textDirection: index.isEven ? TextDirection.rtl : TextDirection.ltr,
                    child:Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: index.isEven ? Colors.black : Colors.blue,
                            child: Image.asset(
                              ic_user,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child:Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: index.isEven ? Colors.black:Colors.blue,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "This is a dummy message..",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),),
                          ),
                          SizedBox(width: 10),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: const Text(
                              "11:00 AM",
                              style: TextStyle(
                                color: Colors.grey, // Ensure 'greyColor' is defined or replace it with a valid color
                              ),
                            ),
                          )
                        ],),
                    ),),);
                },
              ),),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextFormField(
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions_rounded,color: Colors.white,),
                        suffixIcon: Icon(Icons.attachment, color: Colors.white),
                        border:InputBorder.none,
                        hintText: "Type Message Here..",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.white)
                      ),
                    ),
                  )),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

