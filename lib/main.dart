import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeDashboard(title: 'KIT Walker beta'),
    );
  }
}

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeDashboard> createState() => _HomeDashboard();
}

class _HomeDashboard extends State<HomeDashboard> {
  int _counter = 0;

  // Method when counter is pushed
  void _incrementCounter() {
    setState(() {
      _counter++;
      print("HelloWorld");
    });
  }

  @override
  Widget build(BuildContext context) {
    // Define structure of Home Screen
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              const Color(0xffe4a972).withOpacity(0.6),
              const Color(0xff9941d8).withOpacity(0.6),
            ],
            stops: const [
              0.0,
              1.0,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      // Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
