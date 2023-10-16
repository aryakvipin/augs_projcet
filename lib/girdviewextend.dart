import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Gridviewectnd() ,));
}
class Gridviewectnd extends StatelessWidget{
var images=["images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg",
  "images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg",
  "images/person.jpg","images/person.jpg",];
var name=["anum","balu","anum","balu","anum","balu","anum","balu","anum","balu","anum","balu",];
var rate=["2","3","4","5","6","4","3","8","5","balu","anum","balu",];

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,crossAxisSpacing:20 ,mainAxisSpacing:20 ),
      children:   List.generate(10, (index) {
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(images[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 100,),
                    Text(rate[index])
                  ],
                ),
              ],
            ),
          );
        })
    ),
  );

}

}