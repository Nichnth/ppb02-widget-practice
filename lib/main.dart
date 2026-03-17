import 'package:flutter/material.dart';

// StatelessWidget definition
class MyCard extends StatelessWidget {
  // Parameters can be received through the constructor
  final String title;
  final String subtitle;

  // Constructor
  const MyCard({super.key, required this.title, required this.subtitle});

  // The build() method must be overridden — returns the widget's appearance
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(subtitle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Racing Plane Competition 2025',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 250, 104),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 24.0,
        children: [
          SizedBox(height: 24.0),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 72, 135, 179),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Image(
              image: NetworkImage('FLB02051.JPG'),
              width: double.infinity,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 166, 205),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Text(
              'Competition Day',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 250, 104),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text('Plane')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.speed),
                    Text('Speed')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flag),
                    Text('Race')
                  ],
                ),
              ],
            )
          )
        ],
      ),
    ),
  ));
}