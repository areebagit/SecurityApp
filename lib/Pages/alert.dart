import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  void initState() {
    super.initState();
    loadAlertHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      body: ListView.builder(
        itemCount: alertHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Alert Time: ${alertHistory[index].timestamp}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                deleteAlert(index);
              },
            ),
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
    );
  }

  void addAlert() async {
    setState(() {
      alertHistory.add(
        Alert(
          timestamp: DateTime.now(),
        ),
      );
    });
    await saveAlertHistory();
  }

  void deleteAlert(int index) async {
    setState(() {
      alertHistory.removeAt(index);
    });
    await saveAlertHistory();
  }

  Future<void> saveAlertHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> historyStringList =
        alertHistory.map((alert) => alert.timestamp.toIso8601String()).toList();
    await prefs.setStringList('alertHistory', historyStringList);
  }

  Future<void> loadAlertHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? historyStringList = prefs.getStringList('alertHistory');
    if (historyStringList != null) {
      setState(() {
        alertHistory = historyStringList
            .map((timestampString) =>
                Alert(timestamp: DateTime.parse(timestampString)))
            .toList();
      });
    }
  }
}
