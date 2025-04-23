import 'package:flutter/material.dart';
import './DetailPage.dart';

class Home extends StatefulWidget {
  const Home(
      {
        super.key,
      }
    );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String courseImage = '/assets/uni.png';
  final String courseName = 'Introduction to Flutter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.red, child: Text('University Portal')),),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(leading: Icon(Icons.dashboard), title: Text('Dashboard')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => Detailpage(courseImage: courseImage, courseName: courseName),
            ));
          },
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: 'courseImage',
                  child: Image.network(courseImage,height: 20,width: 20,),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(courseName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}