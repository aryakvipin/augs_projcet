import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Listseperated(),));
}
class Listseperated extends StatelessWidget{
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
  return Scaffold(
    body: ListView.separated(itemBuilder: (context, index){
         return Card(color: colrs[index],

          child: ListTile(
           leading:Image(image: AssetImage(images[index]),) ,
           title: Text(name[index],style: GoogleFonts.aBeeZee(

           )),
           subtitle: Text(phone[index]),
           trailing: Icon(Icons.access_alarm),
         ),
         );
    }, separatorBuilder: (context,index){
       return Divider(
         thickness: 5,
         color: colrs[index],
       );
    }, itemCount: images.length),
  );
  }
}