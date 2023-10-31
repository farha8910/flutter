import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  final List Updateitem =[
    ["My status","Yesterday","images/stryb.jpg"],
    ["Shahana","6:45am","images/stryc.jpeg"],
    ["Shahala","7:48pm","images/stryd.jpeg"],
    ["hashim","yesterday","images/strye.jpeg"],
    ["adhil","5:36pm","images/stryf.jpeg"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Updateitem.length,
          itemBuilder:(context,index){
          return Updatelist(name: Updateitem[index][0], time:Updateitem[index][1] , statusimage: Updateitem[index][2]);
          }),

    );
  }
}

class Updatelist extends StatelessWidget {
  final String name;
  final String time;
  final String statusimage;

  Updatelist(
      {required this.name, required this.time, required this.statusimage})

  {} @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(statusimage)),
      title: Text(name),
      subtitle: Text(time),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}



