import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key}); // Constructor for HomeDashboard widget

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false, // Removing the debug banner

      home: Scaffold(
        appBar: AppBar(title: const Text("Home")), // Setting the app bar title

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Elevated Button for Need Support
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for button 1 here (Need Support)
                    print('Button 1 pressed');
                    // Add your code here to handle "Need Support" button press
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
                        style: TextStyle(fontSize: 28.0),
                      ),
                      SizedBox(height: 5), // Adding space between text and button edge
                      Text('(press if You feel danger)'),
                    ],
                  ),
                ),
              ),

              // Second Elevated Button for Send Help
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality for button 2 here (Send Help)
                    print('Button 2 pressed');
                    // Add your code here to handle "Send Help" button press
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
