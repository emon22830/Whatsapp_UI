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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp'),
          centerTitle: false,
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Call')),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_horiz_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(
                        child: Text('New Group'),
                        value: 1,
                      ),
                      const PopupMenuItem(
                        child: Text('Settings '),
                        value: 2,
                      ),
                      const PopupMenuItem(
                        child: Text('Log-Out'),
                        value: 3,
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
            itemCount: 100,
              itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.--YYBu8pIl56ZCySOTCBmgHaHa&pid=Api&P=0&h=220'),
              ),
              title: Text('John Wick'),
              subtitle: Text('Where is my dog?'),
              trailing: Text('6.36 PM'),
            );
          }),
        Text('Status'),
          ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.--YYBu8pIl56ZCySOTCBmgHaHa&pid=Api&P=0&h=220'),
                  ),

                  title: Text('John Wick'),
                  subtitle: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.phone),
                  ),
                  trailing: Text('6.36 PM'),
                );
              }),
        ]),
      ),
    );
  }
}
