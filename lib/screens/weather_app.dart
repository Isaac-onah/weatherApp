
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class weatherApp extends StatefulWidget {
  const weatherApp({Key? key}) : super(key: key);

  @override
  _weatherAppState createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.search, size:30, color:Colors.white), onPressed: () {  },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: ()=>print('Menu Clicked'),
                child: Icon(Icons.menu, size: 30, color: Colors.white,)),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/night.jpg",fit: BoxFit.cover,height: double.infinity, width: double.infinity ,),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Text("Koltkata", style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.normal)),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
