import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Listviewcutem() ,));
}
class Listviewcutem extends StatelessWidget{
  var  name=["anu,","manu","ram","a","b","c"];
  var images=["images/person.jpg","images/person.jpg","images/person.jpg",
    "images/person.jpg",
    "images/person.jpg",
    "images/person.jpg",

  ];
  var phone=["5454","6465","4656","545","54454","45455"];
  var colrs=[Colors.blue,Colors.greenAccent,Colors.green,Colors.yellow,Colors.lime,Colors.pinkAccent];
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     body: ListView.custom(
         childrenDelegate:
     SliverChildBuilderDelegate(
         (context,index){
           return Card(
             child: ListTile(
               leading:CircleAvatar(backgroundImage: AssetImage(images[index])) ,
               title: Text(name[index]),
               subtitle:Text(phone[index]) ,
             ),
           );
         },childCount: name.length,
     )
     ),
   );
  }

}