import 'package:chatapp/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          profile,
          style: TextStyle(
            fontFamily: 'bold', // Make sure 'bold' is a valid fontFamily or replace it with another
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.grey,
              child: Stack(
                children: [
                  Image.asset(
                    ic_user,
                    color: Colors.white,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 20,
                    child: const CircleAvatar(
                      child: Icon(
                        Icons.camera_alt_rounded,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Replaces 20.HeightBox
            const Divider(color: Colors.black, height: 1),
            SizedBox(height: 10), // Replaces 10.HeightBox
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  labelText: "Name", // Corrected label here
                  isDense: true,
                  labelStyle: const TextStyle(
                    fontFamily: 'bold', // Ensure 'bold' is a valid font family
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                namesub, // Ensure 'namesub' is a valid String variable
                style: const TextStyle(
                  fontFamily: 'semi-bold', // Ensure 'bold' is a valid font family
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  labelText: "About", // Corrected label here
                  isDense: true,
                  labelStyle: const TextStyle(
                    fontFamily: 'bold', // Ensure 'bold' is a valid font family
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.black,
              ),
              title: TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                readOnly: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Phone", // Corrected label here
                  isDense: true,
                  labelStyle: const TextStyle(
                    fontFamily: 'bold', // Ensure 'bold' is a valid font family
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
