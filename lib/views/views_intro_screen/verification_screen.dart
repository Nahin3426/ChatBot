import 'package:chatapp/views/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/colors.dart';
import '../../consts/strings.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Padding(
        padding: EdgeInsets.only(top: 30.0),// Adds space above the slogan
        child: Text(
        letsconnect,
        style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold
           ),
          ),

         ),

        ),
    body: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.grey
                )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                      color: Colors.grey
                  )
              ),
              prefixIcon: const Icon(
                Icons.phone_android,
                color: Colors.grey,
              ),
              alignLabelWithHint: true,
              labelText: "Phone Number",
              prefixText: "+880",
              hintText: '1234567890',
              labelStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              )
            ),
          ),
          SizedBox(height: 10),
          Text(
            ott,
            style: TextStyle(
              fontWeight: FontWeight.w600, // semiBold equivalent
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0), // Adds space below the button
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bgColor,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(16),
                  ),
                  onPressed: () {
                    Get.to(() => const HomeScreen(), transition: Transition.downToUp);
                  },
                  child: Text(
                    contin,
                    style: TextStyle(
                      fontWeight: FontWeight.w600, // semiBold equivalent
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    ),
    );
  }
}
