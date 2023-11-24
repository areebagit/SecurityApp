import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for button 1 here
                    print('Button 1 pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    backgroundColor: const Color.fromARGB(255, 255, 176, 7),
                    foregroundColor: Colors.black
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Need Support', 
                      style: TextStyle(fontSize:28.0  ),
                      ),
                      SizedBox(height: 5), // Adding space between text and button edge
                      Text('(press if You feel danger)'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:40.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for button 2 here
                    print('Button 2 pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    backgroundColor: Color.fromARGB(255, 255, 7, 7),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send help',
                        style: TextStyle(
                          fontSize: 28
                        ),

                      ),
                      SizedBox(height: 5), // Adding space between text and button edge
                      Text('(press when in danger)'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
