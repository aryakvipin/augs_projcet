import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(home:Login_with_valid() ,
   debugShowCheckedModeBanner: false,));
 }
class Login_with_valid extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Loginvalidatestate();

}

class Loginvalidatestate  extends State<Login_with_valid>{
      GlobalKey<FormState> formakey=GlobalKey();
   bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lgon with validate"),),

       body: SingleChildScrollView(
           child: Center(
             child: Form(
               key: formakey,
               child: Column(
                 children: [
                      SizedBox(height: 50,),
                     Text("Login page",style: TextStyle(fontSize: 40,color: Colors.red),),
                       Padding(
                         padding: const EdgeInsets.only(top: 50,right: 60,left: 60),
                         child: TextFormField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.person),
                             labelText: "username",
                             hintText: "Username",
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                           ),

                         ),
                       ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,left: 60,right: 60,bottom: 60),
                     child: TextFormField(

                       obscuringCharacter: "*",
                       obscureText:showpass ,
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.password),
                         suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              if(showpass){
                                showpass=false;
                              }
                              else{
                                showpass=true;
                              }
                            });
                         }, icon: Icon(showpass ==true ? Icons.visibility_off :Icons.visibility),),
                         labelText: "password",
                         hintText: "password",
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                       ),

                     ),
                   ),

                ElevatedButton(onPressed: (){}, child: Text("Login"),style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red,),),
                   SizedBox(height: 20,),
                   TextButton(onPressed: (){}, child: Text("create a new user"))



                 ],
               ),
             ),
           ),
       ),
    );
  }
}