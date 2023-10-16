import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listbuilser(),
  ));
}
class Listbuilser extends StatelessWidget{
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

       body: ListView.builder(itemBuilder: (context ,index){
         return Card(color:colrs[index] ,
           child: ListTile(
             leading:CircleAvatar(child: Text("T"),backgroundColor: Colors.red,) ,
             title: Text(name[index]),
             trailing: Text("\$339"),
           ),
         );

       },itemCount: name.length,),


   );
  }

}