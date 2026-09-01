import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Task 01 – App Bar
      appBar: AppBar(
        title:  Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        titleTextStyle:  TextStyle(color: Colors.white, fontSize: 22),
      ),

      body: Container(
        padding:  EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Task 02 – Profile Section
            Center(
              child: Column(
                children: [
                   SizedBox(height: 12),
                   Text(
                    "John Doe",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

             SizedBox(height: 24),
            Container(
              width:double.maxFinite,
              height:2,
              color:Colors.grey.shade300,
            ),

            // Task 03 – User Information
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.grey.shade100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email, color: Colors.blue),
                         SizedBox(width: 12),
                        Text(
                          "john.doe@example.com",
                          style:  TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                         SizedBox(width: 12),
                        Text(
                          "+92 300 1234567",
                          style:  TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.blue),
                         SizedBox(width: 12),
                        Text(
                          "Karachi, Pakistan",
                          style:  TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

             SizedBox(height: 16),
             // Divider(),
            Container(
              width:double.maxFinite,
              height:2,
              color:Colors.grey.shade300,
            ),
             SizedBox(height: 30),

            // Task 04 – Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:  Icon(Icons.person_add),
                  label:  Text("Follow"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
                 SizedBox(width: 16),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon:  Icon(Icons.message),
                  label:  Text("Message"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    side: BorderSide(color: Colors.blue, width: 2),
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),

             SizedBox(height: 30),
             //Divider(),
            Container(
              width:double.maxFinite,
              height:2,
              color:Colors.grey.shade300,
            ),
             SizedBox(height: 8),

            // Task 05 – About Section
            Center(
              child:Text(
                "About Me",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
             SizedBox(height: 8),
            Text(
              "Passionate Flutter developer with a love for building clean, "
              "user-friendly mobile applications. Always exploring new "
              "technologies and enjoy solving real-world problems through code.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade800,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable widget for Task 03 rows
  //   Widget _buildInfoRow(IconData icon, String text) {
  //     return Padding(
  //       padding:  EdgeInsets.symmetric(vertical: 8),
  //       child: Row(
  //         children: [
  //           Icon(icon, color: Colors.blue),
  //            SizedBox(width: 12),
  //           Expanded(
  //             child: Text(text, style:  TextStyle(fontSize: 16)),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
}
