import 'package:flutter/cupertino.dart';
import 'package:outcaster/screens/cupertino_store/pages/cupertino_app_store.dart';
import 'package:outcaster/screens/home_screen/page/home_screen.dart';
import 'package:outcaster/utils/global.dart';

void main() {
  runApp(
    // (Global.isIOS == false)
    //     ? const MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: HomePage(),
    //       ):
    const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
