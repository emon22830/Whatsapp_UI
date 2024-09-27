import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp'),
          centerTitle: false,
          bottom: TabBar(
              tabs: [
                Icon(Icons.camera_alt),
                Text('Chats'),
                Text('Status'),
                Text('Call'),
              ]
          ),
        ),
        body: TabBarView(children: [
          Text('1'),
          Text('1'),
          Text('1'),

        ]),
      ),
    );
  }
}
