import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcustm(),));
}
class Gridviewcustm extends StatelessWidget{
  var images=["images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg",
    "images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg","images/person.jpg",
    "images/person.jpg","images/person.jpg",];
  var name=["anum","balu","anum","balu","anum","balu","anum","balu","anum","balu","anum","balu",];
  var rate=["2","3","4","5","6","4","3","8","5","balu","anum","balu",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 20,crossAxisSpacing: 20),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(color: Colors.yellow[50],
              child: Column(
                children: [

                  Image(image: AssetImage(images[index]),fit: BoxFit.fill,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Text(name[index]),
                      SizedBox(width: 5,),
                      Text(rate[index]),

                    ],
                  ),
                ],
              ),
            );

          },childCount: images.length,
      )),
    );
  }

}