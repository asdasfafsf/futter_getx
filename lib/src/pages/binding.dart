
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/controller/count_controller_with_getx.dart';


class BindingPage extends GetView<CountControllerWithGetx> {
  const BindingPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binding Page'),
      ),
      body: Column(
        children: [
          Obx( () => Text(
            controller.count.toString()
          )),
          RaisedButton(
            onPressed: () {
              controller.increase('1');
            },
            child: Text('버튼'),
          ),
        ],
      )
      
    );
  }

  
}