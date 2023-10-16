// import 'dart:io';
//
//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:images_picker/images_picker.dart';
//
// import 'package:intl/intl.dart';
//
//
// void main(){
//   runApp(MaterialApp(home:MyAddEmployee() ,));
// }
//
// class MyAddEmployee extends StatefulWidget {
//   // const MyeditEmployee({
//   //   Key? key,
//   // }) : super(key: key);
//
//   @override
//   State<MyAddEmployee> createState() => _MyAddEmployeeState();
// }
//
// class _MyAddEmployeeState extends State<MyAddEmployee> {
//
//   static  final _formKey = GlobalKey<FormState>();
//   TextEditingController dateInput = TextEditingController();
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController emialController = TextEditingController();
//   TextEditingController PhoneController = TextEditingController();
//
//   void Refresh(){
//     setState(() {
//
//     });
//   }
//   String? path;
//   @override
//   void initState() {
//     dateInput.text = ""; //set the initial value of text field
//     super.initState();
//   }
//   final myController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//
//       child: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Add Employee",
//               style: TextStyle(color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children:  [
//                 Padding(padding: EdgeInsets.only(top: 30)),
//                 Center(
//                     child: Stack
//                       (
//                       children: [
//                         Column(
//                           children: [
//                             path != null
//                                 ? Container(
//                               child: Image.file(
//                                 File(path!
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//
//                               height: 200,
//
//                             )
//                                 :   Image.asset("images/person.jpg",
//                               width: 170,
//                               height: 170,
//                               fit: BoxFit.cover,
//                             ),
//
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10),
//                               child:ElevatedButton(
//                                 child: Text(' profile picture'),
//                                 onPressed: () async {
//                                   List<Media>? res = await ImagesPicker.pick(
//                                     count: 3,
//                                     pickType: PickType.all,
//                                     language: Language.System,
//                                     maxTime: 30,
//                                     // maxSize: 500,
//                                     cropOpt: CropOption(
//                                       // aspectRatio: CropAspectRatio.wh16x9,
//                                       cropType: CropType.circle,
//                                     ),
//                                   );
//                                   print(res);
//                                   if (res != null) {
//                                     print(res.map((e) => e.path).toList());
//                                     setState(() {
//                                       path = res[0].thumbPath;
//                                     });
//                                     // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
//                                     // print(status);
//                                   }
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//
//                         SizedBox(height: 30,),
//                       ],
//                     )),
//
//
//
//
//               ],
//             ),
//
//             // SizedBox(height: defaultPadding),
//             // Chart(),
//
//           ],
//         ),
//       ),
//     );
//   }
//   // Future<File> downloadFile(String url) async {
//   //   Dio simple = Dio();
//   //   String savePath = Directory.systemTemp.path + '/' + url.split('/').last;
//   //   await simple.download(url, savePath,
//   //       options: Options(responseType: ResponseType.bytes));
//   //   print(savePath);
//   //   File file = new File(savePath);
//   //   return file;
//   // }
// }
