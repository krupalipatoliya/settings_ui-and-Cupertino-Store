// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:outcaster/utils/global.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     if ((Global.isIOS == false)) {
//       return Scaffold(
//         appBar: AppBar(
//             backgroundColor: const Color(0xffFF4500),
//             title: const Text(
//               "Settings UI",
//             ),
//             actions: [
//               Switch(
//                 value: Global.isIOS,
//                 onChanged: (val) {
//                   setState(() {
//                     Global.isIOS = val;
//                   });
//                 },
//               ),
//             ]),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Common",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xffFF4500),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.language),
//                 title: const Text("Language"),
//                 subtitle: const Text("English"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.cloud_queue_outlined),
//                 title: const Text("Environment"),
//                 subtitle: const Text("Productive"),
//                 onTap: () {},
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Account",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xffFF4500),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.phone),
//                 title: const Text("Phone Number"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.mail),
//                 title: const Text("Email"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.logout),
//                 title: const Text("Sing Out"),
//                 onTap: () {},
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Security",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xffFF4500),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.phonelink_lock_outlined),
//                 trailing: Switch(
//                     value: Global.lock,
//                     onChanged: (val) {
//                       setState(() {
//                         Global.lock = val;
//                       });
//                     },
//                     activeColor: const Color(0xffFF4500)),
//                 title: const Text("Lock app in background"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.fingerprint),
//                 trailing: Switch(
//                     value: Global.fingerPrint,
//                     onChanged: (val) {
//                       setState(() {
//                         Global.fingerPrint = val;
//                       });
//                     },
//                     activeColor: const Color(0xffFF4500)),
//                 title: const Text("User Fingerprint"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.lock),
//                 trailing: Switch(
//                     value: Global.passWord,
//                     onChanged: (val) {
//                       setState(() {
//                         Global.passWord = val;
//                       });
//                     },
//                     activeColor: const Color(0xffFF4500)),
//                 title: const Text("Change Password"),
//                 onTap: () {},
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Misc",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xffFF4500),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.summarize),
//                 title: const Text("Terms of Service"),
//                 onTap: () {},
//               ),
//               const Divider(),
//               ListTile(
//                 leading: const Icon(Icons.file_copy),
//                 title: const Text("Opensourcelicenses"),
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       );
//     } else {
//       return CupertinoPageScaffold(
//         backgroundColor: const Color(0xfff3EFF9),
//         navigationBar: CupertinoNavigationBar(
//           backgroundColor: const Color(0xffFF4500),
//           middle: const Text(
//             "Settings UI",
//             style: TextStyle(
//               color: CupertinoColors.white,
//             ),
//           ),
//           trailing: CupertinoSwitch(
//             activeColor: const Color(0xffFF4500),
//             value: Global.isIOS,
//             onChanged: (val) {
//               setState(() {
//                 Global.isIOS = val;
//               });
//             },
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Common",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: CupertinoColors.inactiveGray,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.language),
//                   title: const Text("Language"),
//                   trailing: SizedBox(
//                       height: 100,
//                       width: 81,
//                       child: Row(
//                         children: const [
//                           Text("English", style: TextStyle(fontSize: 16)),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Icon(Icons.arrow_forward_ios),
//                         ],
//                       )),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.cloud_queue_outlined),
//                   title: const Text("Environment"),
//                   trailing: SizedBox(
//                       height: 100,
//                       width: 107,
//                       child: Row(
//                         children: const [
//                           Text("Productive", style: TextStyle(fontSize: 16)),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Icon(Icons.arrow_forward_ios),
//                         ],
//                       )),
//                   onTap: () {},
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Account",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: CupertinoColors.inactiveGray,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.phone),
//                   title: const Text("Phone Number"),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.mail),
//                   title: const Text("Email"),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.logout),
//                   title: const Text("Sign Out"),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   onTap: () {},
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Security",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: CupertinoColors.inactiveGray,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.phonelink_lock_outlined),
//                   trailing: CupertinoSwitch(
//                       value: Global.lock,
//                       onChanged: (val) {
//                         setState(() {
//                           Global.lock = val;
//                         });
//                       },
//                       activeColor: const Color(0xffFF4500)),
//                   title: const Text("Lock app in background"),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.fingerprint),
//                   trailing: CupertinoSwitch(
//                       value: Global.fingerPrint,
//                       onChanged: (val) {
//                         setState(() {
//                           Global.fingerPrint = val;
//                         });
//                       },
//                       activeColor: const Color(0xffFF4500)),
//                   title: const Text("User Fingerprint"),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.lock),
//                   trailing: CupertinoSwitch(
//                       value: Global.passWord,
//                       onChanged: (val) {
//                         setState(() {
//                           Global.passWord = val;
//                         });
//                       },
//                       activeColor: const Color(0xffFF4500)),
//                   title: const Text("Change Password"),
//                   onTap: () {},
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                 child: Text(
//                   "Misc",
//                   style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500,
//                     color: CupertinoColors.inactiveGray,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.summarize),
//                   title: const Text("Terms of Service"),
//                   onTap: () {},
//                 ),
//               ),
//               Material(
//                 child: ListTile(
//                   leading: const Icon(Icons.file_copy),
//                   title: const Text("Open source licenses"),
//                   onTap: () {},
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//   }
// }
