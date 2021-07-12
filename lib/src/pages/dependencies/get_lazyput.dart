import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key:  key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 주입'),
      ),
      body: RaisedButton(
        onPressed: () {
          Get.find<DependencyController>().increase();
        },
        child: Text('lazy')
      ),
    );
  } 
}