import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Alert {
  final DateTime timestamp;

  Alert({required this.timestamp});
}

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  List<Alert> alertHistory = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alerts'),
        ),
        body: ListView.builder(
          itemCount: alertHistory.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Alert Time: ${alertHistory[index].timestamp}'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addAlert();
          },
          tooltip: 'Add Alert',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void addAlert() {
    setState(() {
      alertHistory.add(
        Alert(
          timestamp: DateTime.now(),
        ),
      );
    });
  }
}
