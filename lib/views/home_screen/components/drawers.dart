import 'package:chatapp/consts/consts.dart';
import 'package:chatapp/views/home_screen/profile_screen/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget drawer(){
  return Drawer(
    backgroundColor: bgColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
    child: Column(
      children: [
        ListTile(
          leading: GestureDetector(
            onTap: () {
              Get.back(); // Proper function call
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            "settings", // Make sure 'settings' is a string or replace it with the appropriate variable
            style: TextStyle(
              fontFamily: bold, // Ensure 'bold' is a valid fontFamily, or replace it with your desired font family
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(height: 20),  // Adds vertical space below the ListTile
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white,
          child: Image.asset(
            ic_user,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10), // Replaces 10.HeightBox
        Text(
          "Username",
          style: TextStyle(
            color: Colors.white,
            fontFamily: bold, // Replace with your actual font family name
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),  // Adds more vertical space below the CircleAvatar
        const Divider(
          color: bgColor, // Ensure bgColor is defined or replace it with a color
          height: 1,
        ),
        SizedBox(height: 10),
        ListView(
          shrinkWrap: true,
          children: List.generate(
            drawericonlist.length,
              (index)=>ListTile(
                onTap: (){
                  switch (index){
                    case 0:
                      Get.to(()=> const ProfileScreen(),transition: Transition.downToUp);
                      break;
                    default:
                  }
                },
                leading: Icon(
                  drawericonlist[index],
                  color: Colors.white,
                ),
                title: Text(
                  drawerlisttitles[index],
                  style: TextStyle(
                    fontFamily: bold,    // Replace with your actual font family name
                    color: Colors.white, // Sets the text color to white
                    fontWeight: FontWeight.bold, // Ensures the text is bold
                  ),
                ),
              )
            ),
        ),
        SizedBox(height: 10),  // Adds more vertical space below the CircleAvatar
        const Divider(
          color: bgColor, // Ensure bgColor is defined or replace it with a color
          height: 1,
        ),
        SizedBox(height: 10),
        ListTile(
          leading: const Icon(
            Icons.people,
            color: Colors.white,
          ),
          title: Text(
            inviting,
            style: TextStyle(
              fontFamily: bold,    // Replace with your actual font family name
              color: Colors.white, // Sets the text color to white
              fontWeight: FontWeight.bold, // Ensures the text is bold
            ),
          ),
        ),
      ],
    ),),

  );

}