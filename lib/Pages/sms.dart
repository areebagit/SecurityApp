import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SmsPage extends StatelessWidget {
  final String whatsappNumber = '+923104886471'; // Replace with your WhatsApp number

  void sendSOS() async {
    String message = 'Emergency! I need help!'; // Customize your SOS message here
    String uri = 'https://wa.me/$whatsappNumber?text=${Uri.encodeFull(message)}';

    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: sendSOS,
          child: Text('Send SOS via WhatsApp'),
        ),
      ),
    );
  }
}
