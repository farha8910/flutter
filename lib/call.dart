import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  final  List callers =[
    ["New call","call one or more of your contacts",Icons.call,"images/stryc.jpeg"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:callers.length,
        itemBuilder:(context,index){
          return colllogos(name: callers[index][0], time: callers[index][1], Icons: Icons.call, profileimage: callers[index][3]);
        } );
  }
}
class colllogos extends StatelessWidget {
  final String name;
  final String time;
  final IconData Icons;
  final String profileimage;
  colllogos({required this.name,required this.time,required this.Icons,required this.profileimage})

  {} @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(backgroundImage: AssetImage(profileimage)),
      title: Text(name),
      subtitle: Text(time),
      trailing: Icon(Icons),
    );
  }
}

