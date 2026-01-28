import 'package:flutter/material.dart';
import 'package:hm_shop/pages/login/index.dart';
import 'package:hm_shop/pages/main/index.dart';

//管理路由
Widget getRootWidget() {
  return MaterialApp(
    //命名路由
    initialRoute: "/",
    routes: getRootRoutes(),
  );
}

Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    "/":(context)=>MianPage(),
    "/login":(ontext)=>loginpage(),
  };
}
