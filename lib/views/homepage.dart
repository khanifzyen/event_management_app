import 'package:event_management_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
            color: kLightGreen,
            iconSize: 30,
          ),
        ],
        title: Text("Homepage"),
      ),
      body: Text(
        "Hi, user 👋",
        style: TextStyle(
            color: kLightGreen, fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}
