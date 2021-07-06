import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/50544190?v=4'),
            ),
            Text(
              "Shreyans Jain",
              style: GoogleFonts.pacifico(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Full Stack Developer".toUpperCase(),
              style: GoogleFonts.playfairDisplay(
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.mobile_friendly,
                  color: Colors.teal,
                ),
                title: Text(
                  '7004407831',
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.teal.shade900, fontSize: 15),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.teal,
                ),
                title: Text(
                  'shreyans1313@gmail.com',
                  style: GoogleFonts.sourceSansPro(
                    color: Colors.teal.shade900,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
