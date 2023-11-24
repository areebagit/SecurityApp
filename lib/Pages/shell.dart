import 'package:flutter/material.dart';
import 'package:security_app/Widgets/navbar.dart';

class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: null, body: NavbarWidget());
  }
}