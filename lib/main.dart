import 'package:flutter/material.dart';

// StatelessWidget definition
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  // createState() links the widget to its State class
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

// 2. State class (stores mutable data)
class _CounterWidgetState extends State<CounterWidget> {
  // State variable — its value can change
  int _counter = 0;

  // Method to change the state
  void _increment() {
    setState(() {
      // setState() tells Flutter that the state has changed
      // and the widget needs to be rebuilt
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$_counter', // Display the value of _counter
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 16.0),
        ElevatedButton(
          onPressed: _increment, // Call _increment when button is pressed
          child: Icon(Icons.add),
        ),
      ],
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
              color: const Color.fromARGB(255, 103, 191, 255),
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
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 103, 191, 255),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8.0,
              children: [
                Text(
                  'Increase the speed of the plane:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 16.0),
                CounterWidget(), // Our custom stateful widget
              ],
            ),
          )
        ],
      ),
    ),
  ));
}