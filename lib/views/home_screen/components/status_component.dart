import 'dart:math';
import 'package:chatapp/consts/consts.dart';


Widget statusComponent(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: Image.asset(
                ic_user,
              color: Colors.white,
            ),
          ),
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'MyStatus\n',
                  style: TextStyle(
                    fontFamily: bold,
                    fontSize: 14,
                    color: Colors.black,
                  )
                ),
                TextSpan(
                    text: 'Tap to add status updates..',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    )
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text(
          recentupdates,
          style: TextStyle(
            fontFamily: bold,
            color: Colors.black, // Using Flutter's `Colors.grey[400]` for the grey color
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context,int index){
            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black,width: 3),
                  ),
                  child: CircleAvatar(
                  radius: 25,
                  backgroundColor: getRandomColor(), // Replaces Vx.randomColor
                  child: Image.asset(ic_user),
                ),),
                    title: Text(
                      "Username",
                      style: TextStyle(
                        color: Colors.black, // Ensure 'grey' is defined as a valid color or replace it with Colors.grey
                      ),
                    ),
                    subtitle: Text(
                      "Today, 8 pm",
                      style: TextStyle(
                        color: Colors.grey, // Ensure 'grey' is defined as a valid color or replace it with Colors.grey
                      ),
                    ),
              ),
            );
          },
        ),
      ],
    ),
  );
}

getRandomColor() {
  final random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256), // Red
    random.nextInt(256), // Green
    random.nextInt(256), // Blue
  );
}