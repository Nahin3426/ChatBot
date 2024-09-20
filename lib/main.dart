import 'package:chatapp/consts/colors.dart';
import 'package:chatapp/consts/images.dart';
import 'package:chatapp/views/views_intro_screen/verification_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/consts/strings.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "lato"),
      debugShowCheckedModeBanner: false,
      home: const ChatApp(),
      title: appname,
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(logo,width: 120,),
                      const Text(
                          "Silent Voice",
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'bold',
                        ),
                      )
                    ],
                  ),
            )),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8.0, // Adds horizontal space between Chips
                      runSpacing: 4.0, // Adds vertical space between lines of Chips
                      children: List.generate(listOfFeatures.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0), // Adds 8 pixels of space above each Chip
                          child: Chip(
                            labelPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                            label: Text(listOfFeatures[index]),
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        );
                      }),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0), // Adds space above the slogan
                      child: Text(
                        slogan,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Centers the column contents vertically
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgColor,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                        onPressed: () {
                          Get.to(() => const VerificationScreen(),transition: Transition.downToUp);
                        },
                        child: Text(
                          cont,
                          style: TextStyle(
                            fontWeight: FontWeight.w600, // semiBold equivalent
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Adds 10 pixels of vertical space
                    Text(
                      poweredby,
                      style: TextStyle(
                        fontWeight: FontWeight.w600, // semiBold equivalent
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}



