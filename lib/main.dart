import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/pages/named/first.dart';
import 'package:getx1/src/pages/named/second.dart';
import 'src/binding/binding_page.dart';
import 'src/controller/count_controller_with_getx.dart';
import 'src/home.dart';
import 'src/pages/binding.dart';
import 'src/pages/next.dart';
import 'src/pages/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
          transition: Transition.zoom
        ),
        GetPage(
          name: '/first',
          page: () => FirstNamedPage(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondNamedPage(),
        ),
        GetPage(
          name: '/next',
          page: () => NextPage(),
        ),
        GetPage(
          name: '/user/:uid',
          page: () => UserPage()
        ),
        GetPage(
          name: '/binding',
          page: () => BindingPage(),
          binding: BindingPageBinding(),
        ),
      ],
    );
  }
}
