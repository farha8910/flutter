import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final List chats = [
    ['Liyaaiaanzz♥','hi','10:27 am','images/stryb.jpg'],
    ['Richu', 'how have you been', 'yesterday','images/stryc.jpeg'],
    ['Angel', 'Reacted to photo', 'yesterday','images/stryd.jpeg'],
    ['Aysha', 'bye', '23/10/23', 'images/strye.jpeg'],
    ['Seena', 'call u later', '22/10/23', 'images/strye.jpeg'],
    ['Grandpa', 'reacted to photo', '21/10/23', 'images/stryf.jpeg'],
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
        itemBuilder: (context,index){
        return ChatItems(name: chats[index][0], lastmessage: chats[index][1], time: chats[index][2], profileimage: chats[index][3]);
        }
    );
  }
}

class ChatItems extends StatelessWidget {
  final String name;
  final String lastmessage;
  final String time;
  final String profileimage;
  ChatItems({ required this.name, required this.lastmessage, required this.time, required this.profileimage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(profileimage)),
      title: Text(name),
      subtitle: Text(lastmessage),
      trailing:Text(time),
      onTap: (){Navigator.pop(context);},
    );
  }
}


