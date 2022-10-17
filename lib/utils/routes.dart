import 'package:flutter/cupertino.dart';
import 'package:outcaster/screens/cupertino_store/pages/cupertino_app_store.dart';


import '../screens/home_screen/page/home_screen.dart';
import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage()
};
