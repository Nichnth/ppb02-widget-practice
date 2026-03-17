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
        title: Text('My First App -abel'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 178, 167, 17),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 72, 135, 179),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Image(
              image: NetworkImage('FLB02051.JPG'),
              width: 200,
              height: 200,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 185, 121, 149),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Text(
              'What image is that?',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 208, 216, 113),
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.cake),
                    Text('Food')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.landscape),
                    Text('Scenery')
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.person),
                    Text('People')
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