import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
           Card(color: Colors.lime,
             child: ListTile(
               leading:CircleAvatar(backgroundImage:AssetImage("images/person.jpg") ,),
               title: Text("Manu"),
               subtitle:Text("975544555") ,
               trailing: Icon(Icons.call),
             ),
           ),
          Card(color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Manu"),
              subtitle:Text("975544555") ,
              trailing: Icon(Icons.call),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Manu"),
            subtitle:Text("975544555") ,
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Manu"),
            subtitle:Text("975544555") ,
            trailing: Icon(Icons.call),
          )

        ],
      )
    );
  }

}