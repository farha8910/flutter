import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wartsupp/call.dart';
import 'package:wartsupp/chat.dart';
import 'package:wartsupp/communities.dart';
import 'package:wartsupp/updates.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: watsupp(),
  ));
}

class watsupp extends StatefulWidget {
  const watsupp({super.key});

  @override
  State<watsupp> createState() => _watsuppState();
}

int _currentIndex = 0;

class _watsuppState extends State<watsupp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[900],
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        onTap: (king) {
          setState(() {
            _currentIndex = king;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: "community"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
        ],
      ),
      body: wpicons[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[900],
        onPressed: () {},
        child: Icon(Icons.add_comment, color: Colors.white),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        centerTitle: false,
        title: Text(
          "WhatsApp",
          style: GoogleFonts.sansita(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          PopupMenuButton(
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 'New group', child: Text('New group')),
                PopupMenuItem(
                    value: 'New broadcast', child: Text('New broadcast')),
                PopupMenuItem(
                    value: 'Linked devices', child: Text('Linked divices')),
                PopupMenuItem(
                    value: 'Starred messages', child: Text('Starred messages')),
                PopupMenuItem(value: 'Payments', child: Text('Payments')),
                PopupMenuItem(value: 'Settings', child: Text('Settings')),
              ];
            },
          ),
        ],
      ),
    );
  }
}

List wpicons =[
  ChatPage(),
  Updates(),
  community(),
  calls(),
];


