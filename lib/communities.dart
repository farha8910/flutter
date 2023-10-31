import 'package:flutter/material.dart';

class community extends StatelessWidget {
  final List Members = [
    ["new community", "new group","today","images/stryb.jpeg"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Members.length,
        itemBuilder: (context,index){
          return comlist(name: Members[index][0], lastmessage:Members[index][1] , time: Members[index][2], profileimage: Members[index][3]);
        });
  }
}
class comlist extends StatelessWidget {
  final String name;
  final String lastmessage;
  final String time;
  final String profileimage;
  comlist({required this.name,required this.lastmessage,required this.time,required this.profileimage})

  {} @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(backgroundImage: AssetImage(profileimage)),
      title: Text(name),
      subtitle: Text(lastmessage),
      trailing: Text(time),
    );
  }
}


