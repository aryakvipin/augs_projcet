import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gridview extnd.dart';
import 'homepage.dart';
void main(){
  runApp(MaterialApp(home: tabbareg(),
  debugShowCheckedModeBanner: false,)

  );
}
class tabbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(

        appBar:  AppBar(title:  Text("whatsapp"),
        backgroundColor: Colors.green,
        actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.camera_alt),
            ),
          PopupMenuButton(itemBuilder: (context){
            return [
                 PopupMenuItem(child: Text("settings")),
                 PopupMenuItem(child: Text("help")),
                 PopupMenuItem(child: Text("Invite")),
            ];
          })
        ],
          bottom: TabBar(labelColor: Colors.red,

            tabs: [

            Tab(icon: Icon(Icons.camera),),
            Tab(child: Text("chat"),),
            Tab(child: Text("conatact"),),
            Tab(child: Text("status"),),

          ],),
        ),
     body: TabBarView(children: [
       Homepage(),
       Gridviewextend(),
       Text("contact"),
       Text("status")
     ],),


     ),
   );
  }

}