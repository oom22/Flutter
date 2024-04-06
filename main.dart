import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: HomeScreen()),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Personal page")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                    height: 178,
                    width: 128,
                    child: Image(
                        image: AssetImage("Asset/Images/pfp.JPG"),
                        fit: BoxFit.contain),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17))),
                SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Omar Alharbi",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Computer Science Student",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 35),
                      SizedBox(width: 10),
                      Icon(Icons.mail, size: 35),
                      SizedBox(width: 10),
                      Icon(Icons.add_link, size: 35)
                    ],
                  )
                ])
              ],
            ),
            Text(
              "about",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 10),
            Text(
              "currently studying in Taibah University, and at the same time trying to gain as much experiences as I can, either by making projects, self learning, or by volunteering and joining students clubs.",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            Text(
              "Experties",
              style: TextStyle(fontSize: 30),
            ),
            Row(children: [
              Container(
                  height: 85,
                  width: 85,
                  child: Image(
                      image: AssetImage("Asset/Images/java.webp"),
                      fit: BoxFit.contain),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17))),
              Container(
                  height: 90,
                  width: 90,
                  child: Image(image: AssetImage("Asset/Images/python.png")),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17))),
              Container(
                  height: 90,
                  width: 90,
                  child: Image(image: AssetImage("Asset/Images/kotlin.png")),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17))),
              Container(
                  height: 90,
                  width: 90,
                  child: Image(image: AssetImage("Asset/Images/flutter.JPG")),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)))
            ])
          ]),
        ),
      ),
    );
  }
}
